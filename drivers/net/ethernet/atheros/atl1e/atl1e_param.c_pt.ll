; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atl1e/atl1e_param.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atl1e/atl1e_param.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.atl1e_option = type { i32, ptr, ptr, i32, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, i32 }
%struct.atl1e_adapter = type { ptr, ptr, %struct.napi_struct, %struct.mii_if_info, %struct.atl1e_hw, %struct.atl1e_hw_stats, i32, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.timer_list, i32, ptr, i32, %struct.atl1e_tx_ring, %struct.atl1e_rx_ring, i32, i32, i32, [16 x i32], ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.atl1e_hw = type { ptr, i32, ptr, i32, i16, i16, i16, i16, i8, i16, [6 x i8], [6 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.atl1e_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atl1e_tx_ring = type { ptr, i32, i16, %struct.rwlock_t, i16, %struct.atomic_t, ptr, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atl1e_rx_ring = type { ptr, i32, i32, i32, i32, [4 x %struct.atl1e_rx_page_desc] }
%struct.atl1e_rx_page_desc = type { [2 x %struct.atl1e_rx_page], i8, i16 }
%struct.atl1e_rx_page = type { i32, ptr, i32, ptr, i32 }
%struct.atl1e_opt_list = type { i32, ptr }

@__param_str_tx_desc_cnt = internal constant [18 x i8] c"atl1e.tx_desc_cnt\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_tx_desc_cnt = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_tx_desc_cnt, ptr @param_ops_int, ptr @tx_desc_cnt }, align 4
@__param_tx_desc_cnt = internal constant %struct.kernel_param { ptr @__param_str_tx_desc_cnt, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_tx_desc_cnt } }, section "__param", align 4
@__UNIQUE_ID_tx_desc_cnttype498 = internal constant [40 x i8] c"atl1e.parmtype=tx_desc_cnt:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_desc_cnt499 = internal constant [50 x i8] c"atl1e.parm=tx_desc_cnt:Transmit description count\00", section ".modinfo", align 1
@__param_str_rx_mem_size = internal constant [18 x i8] c"atl1e.rx_mem_size\00", align 1
@__param_arr_rx_mem_size = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_rx_mem_size, ptr @param_ops_int, ptr @rx_mem_size }, align 4
@__param_rx_mem_size = internal constant %struct.kernel_param { ptr @__param_str_rx_mem_size, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_rx_mem_size } }, section "__param", align 4
@__UNIQUE_ID_rx_mem_sizetype500 = internal constant [40 x i8] c"atl1e.parmtype=rx_mem_size:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_mem_size501 = internal constant [52 x i8] c"atl1e.parm=rx_mem_size:memory size of rx buffer(KB)\00", section ".modinfo", align 1
@__param_str_media_type = internal constant [17 x i8] c"atl1e.media_type\00", align 1
@__param_arr_media_type = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_media_type, ptr @param_ops_int, ptr @media_type }, align 4
@__param_media_type = internal constant %struct.kernel_param { ptr @__param_str_media_type, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_media_type } }, section "__param", align 4
@__UNIQUE_ID_media_typetype502 = internal constant [39 x i8] c"atl1e.parmtype=media_type:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_media_type503 = internal constant [39 x i8] c"atl1e.parm=media_type:MediaType Select\00", section ".modinfo", align 1
@__param_str_int_mod_timer = internal constant [20 x i8] c"atl1e.int_mod_timer\00", align 1
@__param_arr_int_mod_timer = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_int_mod_timer, ptr @param_ops_int, ptr @int_mod_timer }, align 4
@__param_int_mod_timer = internal constant %struct.kernel_param { ptr @__param_str_int_mod_timer, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_int_mod_timer } }, section "__param", align 4
@__UNIQUE_ID_int_mod_timertype504 = internal constant [42 x i8] c"atl1e.parmtype=int_mod_timer:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_int_mod_timer505 = internal constant [51 x i8] c"atl1e.parm=int_mod_timer:Interrupt Moderator Timer\00", section ".modinfo", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no configuration for board #%i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using defaults for all values\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Transmit Ddescription Count\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 128\00", [43 x i8] zeroinitializer }, align 32
@__const.atl1e_check_options.opt = private unnamed_addr constant %struct.atl1e_option { i32 1, ptr @.str.2, ptr @.str.3, i32 128, %union.anon.152 { %struct.anon.153 { i32 32, i32 1020 } } }, align 4
@num_tx_desc_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tx_desc_cnt = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Memory size of rx buffer(KB)\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 256\00", [43 x i8] zeroinitializer }, align 32
@__const.atl1e_check_options.opt.6 = private unnamed_addr constant %struct.atl1e_option { i32 1, ptr @.str.4, ptr @.str.5, i32 256, %union.anon.152 { %struct.anon.153 { i32 8, i32 1024 } } }, align 4
@num_rx_mem_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rx_mem_size = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Interrupt Moderate Timer\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 100\00", [43 x i8] zeroinitializer }, align 32
@__const.atl1e_check_options.opt.9 = private unnamed_addr constant %struct.atl1e_option { i32 1, ptr @.str.7, ptr @.str.8, i32 100, %union.anon.152 { %struct.anon.153 { i32 50, i32 65000 } } }, align 4
@num_int_mod_timer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@int_mod_timer = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Speed/Duplex Selection\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 0\00", [45 x i8] zeroinitializer }, align 32
@__const.atl1e_check_options.opt.12 = private unnamed_addr constant %struct.atl1e_option { i32 1, ptr @.str.10, ptr @.str.11, i32 0, %union.anon.152 { %struct.anon.153 { i32 0, i32 4 } } }, align 4
@num_media_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@media_type = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Enabled\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s Disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s set to %i\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid %s specified (%i) %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 174, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 176, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 182, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 183, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"num_tx_desc_cnt\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"tx_desc_cnt\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 44, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 201, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 202, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"num_rx_mem_size\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"rx_mem_size\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 55, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 221, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 222, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"num_int_mod_timer\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"int_mod_timer\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 79, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 240, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 241, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"num_media_type\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"media_type\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 68, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 119, i32 9 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 123, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 129, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 143, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [52 x i8] c"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 153, i32 31 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_int_mod_timer505, ptr @__UNIQUE_ID_int_mod_timertype504, ptr @__UNIQUE_ID_media_type503, ptr @__UNIQUE_ID_media_typetype502, ptr @__UNIQUE_ID_rx_mem_size501, ptr @__UNIQUE_ID_rx_mem_sizetype500, ptr @__UNIQUE_ID_tx_desc_cnt499, ptr @__UNIQUE_ID_tx_desc_cnttype498, ptr @__param_int_mod_timer, ptr @__param_media_type, ptr @__param_rx_mem_size, ptr @__param_tx_desc_cnt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @num_tx_desc_cnt, ptr @tx_desc_cnt, ptr @.str.4, ptr @.str.5, ptr @num_rx_mem_size, ptr @rx_mem_size, ptr @.str.7, ptr @.str.8, ptr @num_int_mod_timer, ptr @int_mod_timer, ptr @.str.10, ptr @.str.11, ptr @num_media_type, ptr @media_type, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_tx_desc_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_desc_cnt to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rx_mem_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mem_size to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_int_mod_timer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_mod_timer to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_media_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_type to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1e_check_options(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %opt = alloca %struct.atl1e_option, align 4
  %val = alloca i32, align 4
  %opt10 = alloca %struct.atl1e_option, align 4
  %val11 = alloca i32, align 4
  %opt23 = alloca %struct.atl1e_option, align 4
  %val24 = alloca i32, align 4
  %opt37 = alloca %struct.atl1e_option, align 4
  %val38 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_number = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 22
  %0 = ptrtoint ptr %bd_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd_number, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %1) #6
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %5, ptr noundef nonnull @.str.1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt) #3
  %6 = call ptr @memcpy(ptr %opt, ptr @__const.atl1e_check_options.opt, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %7 = load i32, ptr @num_tx_desc_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp2 = icmp ugt i32 %7, %1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [33 x i32], ptr @tx_desc_cnt, i32 0, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  call fastcc void @atl1e_validate_option(ptr noundef nonnull %val, ptr noundef nonnull %opt, ptr noundef %adapter)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = trunc i32 %12 to i16
  %conv5 = and i16 %13, -4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %def = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 3
  %14 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %def, align 4
  %conv6 = trunc i32 %15 to i16
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %conv6.sink = phi i16 [ %conv5, %if.then3 ], [ %conv6, %if.else ]
  %16 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.sink, ptr %16, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt10) #3
  %18 = call ptr @memcpy(ptr %opt10, ptr @__const.atl1e_check_options.opt.6, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val11) #3
  %19 = load i32, ptr @num_rx_mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %1)
  %cmp12 = icmp ugt i32 %19, %1
  br i1 %cmp12, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx15 = getelementptr [33 x i32], ptr @rx_mem_size, i32 0, i32 %1
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15, align 4
  %22 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val11, align 4
  call fastcc void @atl1e_validate_option(ptr noundef nonnull %val11, ptr noundef nonnull %opt10, ptr noundef %adapter)
  %23 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val11, align 4
  br label %if.end22

if.else17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %def18 = getelementptr inbounds %struct.atl1e_option, ptr %opt10, i32 0, i32 3
  %25 = ptrtoint ptr %def18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %def18, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else17, %if.then14
  %mul19.sink.in = phi i32 [ %24, %if.then14 ], [ %26, %if.else17 ]
  %mul19.sink = shl i32 %mul19.sink.in, 10
  %27 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul19.sink, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val11) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt10) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt23) #3
  %29 = call ptr @memcpy(ptr %opt23, ptr @__const.atl1e_check_options.opt.9, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val24) #3
  %30 = load i32, ptr @num_int_mod_timer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %1)
  %cmp25 = icmp ugt i32 %30, %1
  br i1 %cmp25, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx28 = getelementptr [33 x i32], ptr @int_mod_timer, i32 0, i32 %1
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx28, align 4
  %33 = ptrtoint ptr %val24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val24, align 4
  call fastcc void @atl1e_validate_option(ptr noundef nonnull %val24, ptr noundef nonnull %opt23, ptr noundef %adapter)
  %34 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val24, align 4
  br label %if.end36

if.else31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %def32 = getelementptr inbounds %struct.atl1e_option, ptr %opt23, i32 0, i32 3
  %36 = ptrtoint ptr %def32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %def32, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then27
  %conv33.sink.in = phi i32 [ %35, %if.then27 ], [ %37, %if.else31 ]
  %conv33.sink = trunc i32 %conv33.sink.in to i16
  %38 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 20
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv33.sink, ptr %38, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val24) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt23) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt37) #3
  %40 = call ptr @memcpy(ptr %opt37, ptr @__const.atl1e_check_options.opt.12, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val38) #3
  %41 = load i32, ptr @num_media_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %1)
  %cmp39 = icmp ugt i32 %41, %1
  br i1 %cmp39, label %if.then41, label %if.else46

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx42 = getelementptr [33 x i32], ptr @media_type, i32 0, i32 %1
  %42 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx42, align 4
  %44 = ptrtoint ptr %val38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val38, align 4
  call fastcc void @atl1e_validate_option(ptr noundef nonnull %val38, ptr noundef nonnull %opt37, ptr noundef %adapter)
  %45 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val38, align 4
  br label %if.end51

if.else46:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %def47 = getelementptr inbounds %struct.atl1e_option, ptr %opt37, i32 0, i32 3
  %47 = ptrtoint ptr %def47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %def47, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else46, %if.then41
  %conv48.sink.in = phi i32 [ %46, %if.then41 ], [ %48, %if.else46 ]
  %conv48.sink = trunc i32 %conv48.sink.in to i16
  %49 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 16
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv48.sink, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val38) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt37) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1e_validate_option(ptr nocapture noundef %value, ptr nocapture noundef readonly %opt, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %def = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 3
  %2 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %def, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opt, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %if.end
  %arg14 = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 4
  %8 = ptrtoint ptr %arg14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp155 = icmp sgt i32 %9, 0
  br i1 %cmp155, label %for.body.lr.ph, label %for.cond.preheader.sw.epilog31_crit_edge

for.cond.preheader.sw.epilog31_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  br label %for.body

sw.bb:                                            ; preds = %if.end
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %sw.bb.sw.epilog31_crit_edge [
    i32 1, label %sw.bb1
    i32 0, label %sw.bb2
  ]

sw.bb.sw.epilog31_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %name = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.13, ptr noundef %16) #6
  br label %return

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %name4 = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 1
  %19 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.14, ptr noundef %20) #6
  br label %return

sw.bb5:                                           ; preds = %if.end
  %arg = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 4
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %22)
  %cmp6.not = icmp slt i32 %1, %22
  br i1 %cmp6.not, label %sw.bb5.sw.epilog31_crit_edge, label %land.lhs.true

sw.bb5.sw.epilog31_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

land.lhs.true:                                    ; preds = %sw.bb5
  %max = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %24)
  %cmp8.not = icmp sgt i32 %1, %24
  br i1 %cmp8.not, label %land.lhs.true.sw.epilog31_crit_edge, label %if.then9

land.lhs.true.sw.epilog31_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %name11 = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 1
  %27 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name11, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %26, ptr noundef nonnull @.str.15, ptr noundef %28, i32 noundef %1) #6
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.atl1e_opt_list, ptr %11, i32 %i.06
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %30)
  %cmp18 = icmp eq i32 %1, %30
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  %str = getelementptr %struct.atl1e_opt_list, ptr %11, i32 %i.06, i32 1
  %31 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %str, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp21.not = icmp eq i8 %34, 0
  br i1 %cmp21.not, label %if.then19.return_crit_edge, label %if.then23

if.then19.return_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.16, ptr noundef %32) #6
  br label %return

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.sw.epilog31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.sw.epilog31_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/atheros/atl1e/atl1e_param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #3, !srcloc !71
  unreachable

sw.epilog31:                                      ; preds = %for.inc.sw.epilog31_crit_edge, %land.lhs.true.sw.epilog31_crit_edge, %sw.bb5.sw.epilog31_crit_edge, %sw.bb.sw.epilog31_crit_edge, %for.cond.preheader.sw.epilog31_crit_edge
  %37 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter, align 8
  %name33 = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 1
  %39 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name33, align 4
  %41 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value, align 4
  %err = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 2
  %43 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %err, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %38, ptr noundef nonnull @.str.17, ptr noundef %40, i32 noundef %42, ptr noundef %44) #6
  %def34 = getelementptr inbounds %struct.atl1e_option, ptr %opt, i32 0, i32 3
  %45 = ptrtoint ptr %def34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %def34, align 4
  %47 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %value, align 4
  br label %return

return:                                           ; preds = %sw.epilog31, %if.then23, %if.then19.return_crit_edge, %if.then9, %sw.bb2, %sw.bb1, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__param_tx_desc_cnt, !1, !"__param_tx_desc_cnt", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_tx_desc_cnttype498, !1, !"__UNIQUE_ID_tx_desc_cnttype498", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_tx_desc_cnt499, !1, !"__UNIQUE_ID_tx_desc_cnt499", i1 false, i1 false}
!4 = !{ptr @__param_rx_mem_size, !5, !"__param_rx_mem_size", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 55, i32 1}
!6 = !{ptr @__UNIQUE_ID_rx_mem_sizetype500, !5, !"__UNIQUE_ID_rx_mem_sizetype500", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_rx_mem_size501, !5, !"__UNIQUE_ID_rx_mem_size501", i1 false, i1 false}
!8 = !{ptr @__param_media_type, !9, !"__param_media_type", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 68, i32 1}
!10 = !{ptr @__UNIQUE_ID_media_typetype502, !9, !"__UNIQUE_ID_media_typetype502", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_media_type503, !9, !"__UNIQUE_ID_media_type503", i1 false, i1 false}
!12 = !{ptr @__param_int_mod_timer, !13, !"__param_int_mod_timer", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 79, i32 1}
!14 = !{ptr @__UNIQUE_ID_int_mod_timertype504, !13, !"__UNIQUE_ID_int_mod_timertype504", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_int_mod_timer505, !13, !"__UNIQUE_ID_int_mod_timer505", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 174, i32 10}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 176, i32 10}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 182, i32 12}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 183, i32 12}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 201, i32 12}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 202, i32 12}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 221, i32 12}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 222, i32 12}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 240, i32 12}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 241, i32 12}
!36 = !{ptr @num_tx_desc_cnt, !1, !"num_tx_desc_cnt", i1 false, i1 false}
!37 = !{ptr @num_rx_mem_size, !5, !"num_rx_mem_size", i1 false, i1 false}
!38 = !{ptr @num_media_type, !9, !"num_media_type", i1 false, i1 false}
!39 = !{ptr @num_int_mod_timer, !13, !"num_int_mod_timer", i1 false, i1 false}
!40 = !{ptr @__param_str_tx_desc_cnt, !1, !"__param_str_tx_desc_cnt", i1 false, i1 false}
!41 = !{ptr @__param_arr_tx_desc_cnt, !1, !"__param_arr_tx_desc_cnt", i1 false, i1 false}
!42 = !{ptr @__param_str_rx_mem_size, !5, !"__param_str_rx_mem_size", i1 false, i1 false}
!43 = !{ptr @__param_arr_rx_mem_size, !5, !"__param_arr_rx_mem_size", i1 false, i1 false}
!44 = !{ptr @__param_str_media_type, !9, !"__param_str_media_type", i1 false, i1 false}
!45 = !{ptr @__param_arr_media_type, !9, !"__param_arr_media_type", i1 false, i1 false}
!46 = !{ptr @__param_str_int_mod_timer, !13, !"__param_str_int_mod_timer", i1 false, i1 false}
!47 = !{ptr @__param_arr_int_mod_timer, !13, !"__param_arr_int_mod_timer", i1 false, i1 false}
!48 = !{ptr @tx_desc_cnt, !1, !"tx_desc_cnt", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 119, i32 9}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 123, i32 9}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 129, i32 33}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 143, i32 12}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_param.c", i32 153, i32 31}
!59 = !{ptr @rx_mem_size, !5, !"rx_mem_size", i1 false, i1 false}
!60 = !{ptr @int_mod_timer, !13, !"int_mod_timer", i1 false, i1 false}
!61 = !{ptr @media_type, !9, !"media_type", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2158016898, i64 2158017411, i64 2158016935, i64 2158016991, i64 2158017025, i64 2158017049, i64 2158017090, i64 2158017111, i64 2158017139, i64 2158017173}
