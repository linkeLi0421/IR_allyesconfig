; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv0297.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0297.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stv0297_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stv0297_attach\09\09\09\09"
module asm "\09.long\09__crc_stv0297_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0297_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0297_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0297_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stv0297_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0297_config = type { i8, ptr, i8 }

@stv0297_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0297 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 870000, i32 11700000, i32 0, i32 64000 }, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr null, ptr @stv0297_release, ptr null, ptr @stv0297_init, ptr @stv0297_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0297_set_frontend, ptr null, ptr @stv0297_get_frontend, ptr @stv0297_read_status, ptr @stv0297_read_ber, ptr @stv0297_read_signal_strength, ptr @stv0297_read_snr, ptr @stv0297_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0297_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"stv0297.description=ST STV0297 DVB-C Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [53 x i8] c"stv0297.author=Dennis Noermann and Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"stv0297.file=drivers/media/dvb-frontends/stv0297\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"stv0297.license=GPL\00", section ".modinfo", align 1
@__kstrtab_stv0297_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0297_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0297_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0297_attach to i32), ptr @__kstrtab_stv0297_attach, ptr @__kstrtabns_stv0297_attach }, section "___ksymtab+stv0297_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stv0297_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: readreg error (reg == 0x%02x, ret == %i)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv0297_readreg\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/stv0297.c\00", [58 x i8] zeroinitializer }, align 32
@stv0297_readreg._entry_ptr = internal global ptr @stv0297_readreg._entry, section ".printk_index", align 4
@stv0297_readreg._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0297_readreg._entry_ptr.4 = internal global ptr @stv0297_readreg._entry.3, section ".printk_index", align 4
@stv0297_readreg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0297_readreg._entry_ptr.6 = internal global ptr @stv0297_readreg._entry.5, section ".printk_index", align 4
@stv0297_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv0297_writereg\00", [47 x i8] zeroinitializer }, align 32
@stv0297_writereg._entry_ptr = internal global ptr @stv0297_writereg._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stv0297_readregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv0297_readregs\00", [47 x i8] zeroinitializer }, align 32
@stv0297_readregs._entry_ptr = internal global ptr @stv0297_readregs._entry, section ".printk_index", align 4
@stv0297_readregs._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0297_readregs._entry_ptr.11 = internal global ptr @stv0297_readregs._entry.10, section ".printk_index", align 4
@stv0297_readregs._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0297_readregs._entry_ptr.13 = internal global ptr @stv0297_readregs._entry.12, section ".printk_index", align 4
@switch.table.stv0297_set_frontend = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 100, i32 100, i32 100, i32 200, i32 200], [44 x i8] zeroinitializer }, align 32
@switch.table.stv0297_set_frontend.14 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1000, i32 1000, i32 1000, i32 500, i32 500], [44 x i8] zeroinitializer }, align 32
@switch.table.stv0297_set_frontend.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\10@ 0", [27 x i8] zeroinitializer }, align 32
@switch.table.stv0297_get_frontend = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 4, i32 5, i32 3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"stv0297_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 681, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 66, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 70, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 75, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 48, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 106, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 110, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private constant [41 x i8] c"../drivers/media/dvb-frontends/stv0297.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 115, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [34 x i8] c"switch.table.stv0297_set_frontend\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [37 x i8] c"switch.table.stv0297_set_frontend.14\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [37 x i8] c"switch.table.stv0297_set_frontend.15\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [34 x i8] c"switch.table.stv0297_get_frontend\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_stv0297_attach, ptr @stv0297_readreg._entry, ptr @stv0297_readreg._entry.3, ptr @stv0297_readreg._entry.5, ptr @stv0297_readreg._entry_ptr, ptr @stv0297_readreg._entry_ptr.4, ptr @stv0297_readreg._entry_ptr.6, ptr @stv0297_readregs._entry, ptr @stv0297_readregs._entry.10, ptr @stv0297_readregs._entry.12, ptr @stv0297_readregs._entry_ptr, ptr @stv0297_readregs._entry_ptr.11, ptr @stv0297_readregs._entry_ptr.13, ptr @stv0297_writereg._entry, ptr @stv0297_writereg._entry_ptr, ptr @stv0297_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.stv0297_set_frontend, ptr @switch.table.stv0297_set_frontend.14, ptr @switch.table.stv0297_set_frontend.15, ptr @switch.table.stv0297_get_frontend], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0297_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0297_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0297_readreg._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0297_readreg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0297_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0297_readregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0297_readregs._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0297_readregs._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stv0297_set_frontend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stv0297_set_frontend.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stv0297_set_frontend.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stv0297_get_frontend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stv0297_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1056) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.stv0297_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %last_ber = getelementptr inbounds %struct.stv0297_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %last_ber to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %last_ber, align 8
  %base_freq = getelementptr inbounds %struct.stv0297_state, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %base_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %base_freq, align 4
  %call3 = tail call fastcc i32 @stv0297_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -128)
  %and = and i32 %call3, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp4.not = icmp eq i32 %and, 32
  br i1 %cmp4.not, label %if.end6, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.stv0297_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.stv0297_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = call ptr @memcpy(ptr %ops, ptr @stv0297_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.stv0297_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end6
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end6 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0297_readreg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #6
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #6
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %config = getelementptr inbounds %struct.stv0297_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i8, ptr %5, align 4
  %conv5 = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1, ptr %buf8, align 4
  %stop_during_read = getelementptr inbounds %struct.stv0297_config, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %stop_during_read to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %stop_during_read, align 4
  %18 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv13 = zext i8 %reg to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv13, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %call17 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef %arrayinit.element, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 1
  br i1 %cmp18.not, label %if.end.if.end41_crit_edge, label %do.end23

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv25 = zext i8 %reg to i32
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv25, i32 noundef %call17) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %call30 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 2
  br i1 %cmp31.not, label %if.else.if.end41_crit_edge, label %do.end36

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv38 = zext i8 %reg to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv38, i32 noundef %call30) #10
  br label %cleanup

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %23 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1, align 1
  %conv43 = zext i8 %24 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end36, %do.end23, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end23 ], [ %conv43, %if.end41 ], [ -1, %do.end36 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stv0297_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 1
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %stv0297_writereg.exit, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add15, %stv0297_writereg.exit ]
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %inittab = getelementptr inbounds %struct.stv0297_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %inittab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inittab, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %i.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp = icmp eq i8 %9, -1
  %add = or i32 %i.0, 1
  br i1 %cmp, label %land.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.rhs:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr i8, ptr %7, i32 %add
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp6 = icmp eq i8 %11, -1
  br i1 %cmp6, label %for.end, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %arrayidx14 = getelementptr i8, ptr %7, i32 %add
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %buf.i, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %3, align 4
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %conv.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %msg.i, align 4
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %3, align 4
  %23 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i, ptr %buf1.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.stv0297_writereg.exit_crit_edge, label %do.end.i

for.body.stv0297_writereg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i = zext i8 %9 to i32
  %conv4.i = zext i8 %13 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %call.i) #10
  br label %stv0297_writereg.exit

stv0297_writereg.exit:                            ; preds = %do.end.i, %for.body.stv0297_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %add15 = add i32 %i.0, 2
  br label %for.cond

for.end:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 200) #6
  %last_ber = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %last_ber to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %last_ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call.i = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -128) #6
  %2 = trunc i32 %call.i to i8
  %conv4.i = or i8 %2, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %buf.i.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i.i = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %entry.stv0297_writereg_mask.exit_crit_edge, label %do.end.i.i

entry.stv0297_writereg_mask.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i = zext i8 %conv4.i to i32
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 128, i32 noundef %conv4.i.i, i32 noundef %call.i.i) #10
  br label %stv0297_writereg_mask.exit

stv0297_writereg_mask.exit:                       ; preds = %do.end.i.i, %entry.stv0297_writereg_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i1048 = alloca [2 x i8], align 1
  %msg.i.i1049 = alloca %struct.i2c_msg, align 4
  %buf.i.i1033 = alloca [2 x i8], align 1
  %msg.i.i1034 = alloca %struct.i2c_msg, align 4
  %buf.i.i1018 = alloca [2 x i8], align 1
  %msg.i.i1019 = alloca %struct.i2c_msg, align 4
  %buf.i.i1003 = alloca [2 x i8], align 1
  %msg.i.i1004 = alloca %struct.i2c_msg, align 4
  %buf.i.i987 = alloca [2 x i8], align 1
  %msg.i.i988 = alloca %struct.i2c_msg, align 4
  %buf.i.i971 = alloca [2 x i8], align 1
  %msg.i.i972 = alloca %struct.i2c_msg, align 4
  %buf.i.i955 = alloca [2 x i8], align 1
  %msg.i.i956 = alloca %struct.i2c_msg, align 4
  %buf.i.i940 = alloca [2 x i8], align 1
  %msg.i.i941 = alloca %struct.i2c_msg, align 4
  %buf.i.i924 = alloca [2 x i8], align 1
  %msg.i.i925 = alloca %struct.i2c_msg, align 4
  %buf.i.i908 = alloca [2 x i8], align 1
  %msg.i.i909 = alloca %struct.i2c_msg, align 4
  %buf.i.i893 = alloca [2 x i8], align 1
  %msg.i.i894 = alloca %struct.i2c_msg, align 4
  %buf.i.i877 = alloca [2 x i8], align 1
  %msg.i.i878 = alloca %struct.i2c_msg, align 4
  %buf.i.i862 = alloca [2 x i8], align 1
  %msg.i.i863 = alloca %struct.i2c_msg, align 4
  %buf.i.i.i846 = alloca [2 x i8], align 1
  %msg.i.i.i847 = alloca %struct.i2c_msg, align 4
  %buf.i.i.i818 = alloca [2 x i8], align 1
  %msg.i.i.i819 = alloca %struct.i2c_msg, align 4
  %buf.i33.i = alloca [2 x i8], align 1
  %msg.i34.i = alloca %struct.i2c_msg, align 4
  %buf.i20.i = alloca [2 x i8], align 1
  %msg.i21.i = alloca %struct.i2c_msg, align 4
  %buf.i.i820 = alloca [2 x i8], align 1
  %msg.i.i821 = alloca %struct.i2c_msg, align 4
  %buf.i.i.i791 = alloca [2 x i8], align 1
  %msg.i.i.i792 = alloca %struct.i2c_msg, align 4
  %buf.i.i793 = alloca [2 x i8], align 1
  %msg.i.i794 = alloca %struct.i2c_msg, align 4
  %buf.i43.i = alloca [2 x i8], align 1
  %msg.i44.i = alloca %struct.i2c_msg, align 4
  %buf.i30.i = alloca [2 x i8], align 1
  %msg.i31.i = alloca %struct.i2c_msg, align 4
  %buf.i18.i = alloca [2 x i8], align 1
  %msg.i19.i = alloca %struct.i2c_msg, align 4
  %buf.i.i779 = alloca [2 x i8], align 1
  %msg.i.i780 = alloca %struct.i2c_msg, align 4
  %buf.i.i.i765 = alloca [2 x i8], align 1
  %msg.i.i.i766 = alloca %struct.i2c_msg, align 4
  %buf.i.i750 = alloca [2 x i8], align 1
  %msg.i.i751 = alloca %struct.i2c_msg, align 4
  %buf.i737 = alloca [2 x i8], align 1
  %msg.i738 = alloca %struct.i2c_msg, align 4
  %buf.i724 = alloca [2 x i8], align 1
  %msg.i725 = alloca %struct.i2c_msg, align 4
  %buf.i711 = alloca [2 x i8], align 1
  %msg.i712 = alloca %struct.i2c_msg, align 4
  %buf.i698 = alloca [2 x i8], align 1
  %msg.i699 = alloca %struct.i2c_msg, align 4
  %buf.i685 = alloca [2 x i8], align 1
  %msg.i686 = alloca %struct.i2c_msg, align 4
  %buf.i672 = alloca [2 x i8], align 1
  %msg.i673 = alloca %struct.i2c_msg, align 4
  %buf.i.i657 = alloca [2 x i8], align 1
  %msg.i.i658 = alloca %struct.i2c_msg, align 4
  %buf.i.i641 = alloca [2 x i8], align 1
  %msg.i.i642 = alloca %struct.i2c_msg, align 4
  %buf.i.i625 = alloca [2 x i8], align 1
  %msg.i.i626 = alloca %struct.i2c_msg, align 4
  %buf.i.i609 = alloca [2 x i8], align 1
  %msg.i.i610 = alloca %struct.i2c_msg, align 4
  %buf.i.i594 = alloca [2 x i8], align 1
  %msg.i.i595 = alloca %struct.i2c_msg, align 4
  %buf.i.i578 = alloca [2 x i8], align 1
  %msg.i.i579 = alloca %struct.i2c_msg, align 4
  %buf.i.i563 = alloca [2 x i8], align 1
  %msg.i.i564 = alloca %struct.i2c_msg, align 4
  %buf.i.i547 = alloca [2 x i8], align 1
  %msg.i.i548 = alloca %struct.i2c_msg, align 4
  %buf.i.i532 = alloca [2 x i8], align 1
  %msg.i.i533 = alloca %struct.i2c_msg, align 4
  %buf.i.i516 = alloca [2 x i8], align 1
  %msg.i.i517 = alloca %struct.i2c_msg, align 4
  %buf.i.i501 = alloca [2 x i8], align 1
  %msg.i.i502 = alloca %struct.i2c_msg, align 4
  %buf.i.i485 = alloca [2 x i8], align 1
  %msg.i.i486 = alloca %struct.i2c_msg, align 4
  %buf.i.i470 = alloca [2 x i8], align 1
  %msg.i.i471 = alloca %struct.i2c_msg, align 4
  %buf.i.i455 = alloca [2 x i8], align 1
  %msg.i.i456 = alloca %struct.i2c_msg, align 4
  %buf.i.i439 = alloca [2 x i8], align 1
  %msg.i.i440 = alloca %struct.i2c_msg, align 4
  %buf.i.i423 = alloca [2 x i8], align 1
  %msg.i.i424 = alloca %struct.i2c_msg, align 4
  %buf.i.i408 = alloca [2 x i8], align 1
  %msg.i.i409 = alloca %struct.i2c_msg, align 4
  %buf.i.i393 = alloca [2 x i8], align 1
  %msg.i.i394 = alloca %struct.i2c_msg, align 4
  %buf.i.i378 = alloca [2 x i8], align 1
  %msg.i.i379 = alloca %struct.i2c_msg, align 4
  %buf.i365 = alloca [2 x i8], align 1
  %msg.i366 = alloca %struct.i2c_msg, align 4
  %buf.i352 = alloca [2 x i8], align 1
  %msg.i353 = alloca %struct.i2c_msg, align 4
  %buf.i.i336 = alloca [2 x i8], align 1
  %msg.i.i337 = alloca %struct.i2c_msg, align 4
  %buf.i.i321 = alloca [2 x i8], align 1
  %msg.i.i322 = alloca %struct.i2c_msg, align 4
  %buf.i.i306 = alloca [2 x i8], align 1
  %msg.i.i307 = alloca %struct.i2c_msg, align 4
  %buf.i.i291 = alloca [2 x i8], align 1
  %msg.i.i292 = alloca %struct.i2c_msg, align 4
  %buf.i278 = alloca [2 x i8], align 1
  %msg.i279 = alloca %struct.i2c_msg, align 4
  %buf.i.i266 = alloca [2 x i8], align 1
  %msg.i.i267 = alloca %struct.i2c_msg, align 4
  %buf.i2.i = alloca [2 x i8], align 1
  %msg.i3.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modulation, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stv0297_set_frontend, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep1064 = getelementptr inbounds [5 x i32], ptr @switch.table.stv0297_set_frontend.14, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep1064 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load1065 = load i32, ptr %switch.gep1064, align 4
  %inversion2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %7 = ptrtoint ptr %inversion2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inversion2, align 4
  %config = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  %invert = getelementptr inbounds %struct.stv0297_config, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ne i32 %8, 1
  %cond = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not1063 = icmp slt i8 %bf.load, 0
  %inversion.0 = select i1 %tobool.not1063, i32 %cond, i32 %8
  %12 = zext i32 %inversion.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %inversion.0, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.sw.epilog6_crit_edge
    i32 1, label %sw.bb3
  ]

switch.lookup.sw.epilog6_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog6

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub nsw i32 0, %switch.load1065
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb3, %switch.lookup.sw.epilog6_crit_edge
  %sweeprate.1 = phi i32 [ %sub, %sw.bb3 ], [ %switch.load1065, %switch.lookup.sw.epilog6_crit_edge ]
  %cmp.i = phi i1 [ false, %sw.bb3 ], [ true, %switch.lookup.sw.epilog6_crit_edge ]
  %carrieroffset.0 = phi i32 [ 8858520, %sw.bb3 ], [ -8858520, %switch.lookup.sw.epilog6_crit_edge ]
  %call = tail call i32 @stv0297_init(ptr noundef %fe)
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %13 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_params, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %sw.epilog6.if.end20_crit_edge, label %if.then8

sw.epilog6.if.end20_crit_edge:                    ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then8:                                         ; preds = %sw.epilog6
  %call12 = tail call i32 %14(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.then8.if.end20_crit_edge, label %if.then15

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 %16(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then8.if.end20_crit_edge, %sw.epilog6.if.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -126, ptr %buf.i, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %20, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i, ptr %buf1.i, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end20.stv0297_writereg.exit_crit_edge, label %do.end.i

if.end20.stv0297_writereg.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 130, i32 noundef 0, i32 noundef %call.i) #10
  br label %stv0297_writereg.exit

stv0297_writereg.exit:                            ; preds = %do.end.i, %if.end20.stv0297_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call.i.i = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 37) #6
  %31 = trunc i32 %call.i.i to i8
  %conv4.i.i = or i8 %31, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #6
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 37, ptr %buf.i.i.i, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv4.i.i, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %35 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 196607, ptr %35, align 4
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %conv.i.i.i = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf1.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %buf1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.i.i.i, ptr %buf1.i.i.i, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %stv0297_writereg.exit.stv0297_writereg_mask.exit.i_crit_edge, label %do.end.i.i.i

stv0297_writereg.exit.stv0297_writereg_mask.exit.i_crit_edge: ; preds = %stv0297_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit.i

do.end.i.i.i:                                     ; preds = %stv0297_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i.i = zext i8 %conv4.i.i to i32
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 37, i32 noundef %conv4.i.i.i, i32 noundef %call.i.i.i) #10
  br label %stv0297_writereg_mask.exit.i

stv0297_writereg_mask.exit.i:                     ; preds = %do.end.i.i.i, %stv0297_writereg.exit.stv0297_writereg_mask.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %46 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 33, ptr %buf.i.i, align 1
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 64, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %49 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 196607, ptr %49, align 4
  %51 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  %conv.i.i = zext i8 %54 to i16
  %55 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i1.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1.i)
  %cmp.not.i.i = icmp eq i32 %call.i1.i, 1
  br i1 %cmp.not.i.i, label %stv0297_writereg_mask.exit.i.stv0297_writereg.exit.i_crit_edge, label %do.end.i.i

stv0297_writereg_mask.exit.i.stv0297_writereg.exit.i_crit_edge: ; preds = %stv0297_writereg_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit.i

do.end.i.i:                                       ; preds = %stv0297_writereg_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 33, i32 noundef 64, i32 noundef %call.i1.i) #10
  br label %stv0297_writereg.exit.i

stv0297_writereg.exit.i:                          ; preds = %do.end.i.i, %stv0297_writereg_mask.exit.i.stv0297_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i2.i) #6
  %60 = getelementptr inbounds [2 x i8], ptr %buf.i2.i, i32 0, i32 1
  %61 = ptrtoint ptr %buf.i2.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 32, ptr %buf.i2.i, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 93, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i3.i) #6
  %63 = getelementptr inbounds i8, ptr %msg.i3.i, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %63, align 4
  %65 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  %conv.i5.i = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i3.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i5.i, ptr %msg.i3.i, align 4
  %flags.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i6.i, align 2
  %buf1.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3.i, i32 0, i32 3
  %71 = ptrtoint ptr %buf1.i8.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i2.i, ptr %buf1.i8.i, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i9.i = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i3.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i9.i)
  %cmp.not.i10.i = icmp eq i32 %call.i9.i, 1
  br i1 %cmp.not.i10.i, label %stv0297_writereg.exit.i.stv0297_set_initialdemodfreq.exit_crit_edge, label %do.end.i12.i

stv0297_writereg.exit.i.stv0297_set_initialdemodfreq.exit_crit_edge: ; preds = %stv0297_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_set_initialdemodfreq.exit

do.end.i12.i:                                     ; preds = %stv0297_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 32, i32 noundef 93, i32 noundef %call.i9.i) #10
  br label %stv0297_set_initialdemodfreq.exit

stv0297_set_initialdemodfreq.exit:                ; preds = %do.end.i12.i, %stv0297_writereg.exit.i.stv0297_set_initialdemodfreq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i3.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i2.i) #6
  %call.i268 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 67) #6
  %74 = trunc i32 %call.i268 to i8
  %75 = and i8 %74, -17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i266) #6
  %76 = getelementptr inbounds [2 x i8], ptr %buf.i.i266, i32 0, i32 1
  %77 = ptrtoint ptr %buf.i.i266 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 67, ptr %buf.i.i266, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %75, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i267) #6
  %79 = getelementptr inbounds i8, ptr %msg.i.i267, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 196607, ptr %79, align 4
  %81 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 4
  %conv.i.i269 = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i.i267 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i.i269, ptr %msg.i.i267, align 4
  %flags.i.i270 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i267, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i.i270 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i.i270, align 2
  %buf1.i.i271 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i267, i32 0, i32 3
  %87 = ptrtoint ptr %buf1.i.i271 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i.i266, ptr %buf1.i.i271, align 4
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %call.i.i272 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i.i267, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i272)
  %cmp.not.i.i273 = icmp eq i32 %call.i.i272, 1
  br i1 %cmp.not.i.i273, label %stv0297_set_initialdemodfreq.exit.stv0297_writereg_mask.exit_crit_edge, label %do.end.i.i276

stv0297_set_initialdemodfreq.exit.stv0297_writereg_mask.exit_crit_edge: ; preds = %stv0297_set_initialdemodfreq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit

do.end.i.i276:                                    ; preds = %stv0297_set_initialdemodfreq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i274 = zext i8 %75 to i32
  %call5.i.i275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 67, i32 noundef %conv4.i.i274, i32 noundef %call.i.i272) #10
  br label %stv0297_writereg_mask.exit

stv0297_writereg_mask.exit:                       ; preds = %do.end.i.i276, %stv0297_set_initialdemodfreq.exit.stv0297_writereg_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i267) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i266) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i278) #6
  %90 = getelementptr inbounds [2 x i8], ptr %buf.i278, i32 0, i32 1
  %91 = ptrtoint ptr %buf.i278 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 65, ptr %buf.i278, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i279) #6
  %93 = getelementptr inbounds i8, ptr %msg.i279, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %93, align 4
  %95 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 4
  %conv.i281 = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i279 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i281, ptr %msg.i279, align 4
  %flags.i282 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i282 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i282, align 2
  store i16 2, ptr %93, align 4
  %buf1.i284 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279, i32 0, i32 3
  %101 = ptrtoint ptr %buf1.i284 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i278, ptr %buf1.i284, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %call.i285 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i279, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i285)
  %cmp.not.i286 = icmp eq i32 %call.i285, 1
  br i1 %cmp.not.i286, label %stv0297_writereg_mask.exit.stv0297_writereg.exit290_crit_edge, label %do.end.i288

stv0297_writereg_mask.exit.stv0297_writereg.exit290_crit_edge: ; preds = %stv0297_writereg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit290

do.end.i288:                                      ; preds = %stv0297_writereg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 65, i32 noundef 0, i32 noundef %call.i285) #10
  br label %stv0297_writereg.exit290

stv0297_writereg.exit290:                         ; preds = %do.end.i288, %stv0297_writereg_mask.exit.stv0297_writereg.exit290_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i279) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i278) #6
  %call.i293 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 66) #6
  %104 = trunc i32 %call.i293 to i8
  %105 = and i8 %104, -4
  %conv4.i = or i8 %105, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i291) #6
  %106 = getelementptr inbounds [2 x i8], ptr %buf.i.i291, i32 0, i32 1
  %107 = ptrtoint ptr %buf.i.i291 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 66, ptr %buf.i.i291, align 1
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv4.i, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i292) #6
  %109 = getelementptr inbounds i8, ptr %msg.i.i292, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 196607, ptr %109, align 4
  %111 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %config, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 4
  %conv.i.i296 = zext i8 %114 to i16
  %115 = ptrtoint ptr %msg.i.i292 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i.i296, ptr %msg.i.i292, align 4
  %flags.i.i297 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i292, i32 0, i32 1
  %116 = ptrtoint ptr %flags.i.i297 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i.i297, align 2
  %buf1.i.i298 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i292, i32 0, i32 3
  %117 = ptrtoint ptr %buf1.i.i298 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %buf.i.i291, ptr %buf1.i.i298, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call.i.i299 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i.i292, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i299)
  %cmp.not.i.i300 = icmp eq i32 %call.i.i299, 1
  br i1 %cmp.not.i.i300, label %stv0297_writereg.exit290.stv0297_writereg_mask.exit305_crit_edge, label %do.end.i.i303

stv0297_writereg.exit290.stv0297_writereg_mask.exit305_crit_edge: ; preds = %stv0297_writereg.exit290
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit305

do.end.i.i303:                                    ; preds = %stv0297_writereg.exit290
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i301 = zext i8 %conv4.i to i32
  %call5.i.i302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 66, i32 noundef %conv4.i.i301, i32 noundef %call.i.i299) #10
  br label %stv0297_writereg_mask.exit305

stv0297_writereg_mask.exit305:                    ; preds = %do.end.i.i303, %stv0297_writereg.exit290.stv0297_writereg_mask.exit305_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i292) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i291) #6
  %call.i308 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 54) #6
  %120 = trunc i32 %call.i308 to i8
  %121 = and i8 %120, -97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i306) #6
  %122 = getelementptr inbounds [2 x i8], ptr %buf.i.i306, i32 0, i32 1
  %123 = ptrtoint ptr %buf.i.i306 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 54, ptr %buf.i.i306, align 1
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %121, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i307) #6
  %125 = getelementptr inbounds i8, ptr %msg.i.i307, i32 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 196607, ptr %125, align 4
  %127 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %config, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %128, align 4
  %conv.i.i311 = zext i8 %130 to i16
  %131 = ptrtoint ptr %msg.i.i307 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i.i311, ptr %msg.i.i307, align 4
  %flags.i.i312 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i307, i32 0, i32 1
  %132 = ptrtoint ptr %flags.i.i312 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %flags.i.i312, align 2
  %buf1.i.i313 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i307, i32 0, i32 3
  %133 = ptrtoint ptr %buf1.i.i313 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %buf.i.i306, ptr %buf1.i.i313, align 4
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %call.i.i314 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %msg.i.i307, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i314)
  %cmp.not.i.i315 = icmp eq i32 %call.i.i314, 1
  br i1 %cmp.not.i.i315, label %stv0297_writereg_mask.exit305.stv0297_writereg_mask.exit320_crit_edge, label %do.end.i.i318

stv0297_writereg_mask.exit305.stv0297_writereg_mask.exit320_crit_edge: ; preds = %stv0297_writereg_mask.exit305
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit320

do.end.i.i318:                                    ; preds = %stv0297_writereg_mask.exit305
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i316 = zext i8 %121 to i32
  %call5.i.i317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 54, i32 noundef %conv4.i.i316, i32 noundef %call.i.i314) #10
  br label %stv0297_writereg_mask.exit320

stv0297_writereg_mask.exit320:                    ; preds = %do.end.i.i318, %stv0297_writereg_mask.exit305.stv0297_writereg_mask.exit320_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i307) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i306) #6
  %call.i323 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 54) #6
  %136 = trunc i32 %call.i323 to i8
  %137 = and i8 %136, -25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i321) #6
  %138 = getelementptr inbounds [2 x i8], ptr %buf.i.i321, i32 0, i32 1
  %139 = ptrtoint ptr %buf.i.i321 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 54, ptr %buf.i.i321, align 1
  %140 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %137, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i322) #6
  %141 = getelementptr inbounds i8, ptr %msg.i.i322, i32 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 196607, ptr %141, align 4
  %143 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %config, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 4
  %conv.i.i326 = zext i8 %146 to i16
  %147 = ptrtoint ptr %msg.i.i322 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i.i326, ptr %msg.i.i322, align 4
  %flags.i.i327 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i322, i32 0, i32 1
  %148 = ptrtoint ptr %flags.i.i327 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %flags.i.i327, align 2
  %buf1.i.i328 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i322, i32 0, i32 3
  %149 = ptrtoint ptr %buf1.i.i328 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %buf.i.i321, ptr %buf1.i.i328, align 4
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %call.i.i329 = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %msg.i.i322, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i329)
  %cmp.not.i.i330 = icmp eq i32 %call.i.i329, 1
  br i1 %cmp.not.i.i330, label %stv0297_writereg_mask.exit320.stv0297_writereg_mask.exit335_crit_edge, label %do.end.i.i333

stv0297_writereg_mask.exit320.stv0297_writereg_mask.exit335_crit_edge: ; preds = %stv0297_writereg_mask.exit320
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit335

do.end.i.i333:                                    ; preds = %stv0297_writereg_mask.exit320
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i331 = zext i8 %137 to i32
  %call5.i.i332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 54, i32 noundef %conv4.i.i331, i32 noundef %call.i.i329) #10
  br label %stv0297_writereg_mask.exit335

stv0297_writereg_mask.exit335:                    ; preds = %do.end.i.i333, %stv0297_writereg_mask.exit320.stv0297_writereg_mask.exit335_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i322) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i321) #6
  %call.i338 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 113) #6
  %152 = trunc i32 %call.i338 to i8
  %conv4.i340 = or i8 %152, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i336) #6
  %153 = getelementptr inbounds [2 x i8], ptr %buf.i.i336, i32 0, i32 1
  %154 = ptrtoint ptr %buf.i.i336 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 113, ptr %buf.i.i336, align 1
  %155 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv4.i340, ptr %153, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i337) #6
  %156 = getelementptr inbounds i8, ptr %msg.i.i337, i32 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 196607, ptr %156, align 4
  %158 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %config, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %159, align 4
  %conv.i.i342 = zext i8 %161 to i16
  %162 = ptrtoint ptr %msg.i.i337 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv.i.i342, ptr %msg.i.i337, align 4
  %flags.i.i343 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i337, i32 0, i32 1
  %163 = ptrtoint ptr %flags.i.i343 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %flags.i.i343, align 2
  %buf1.i.i344 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i337, i32 0, i32 3
  %164 = ptrtoint ptr %buf1.i.i344 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %buf.i.i336, ptr %buf1.i.i344, align 4
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 4
  %call.i.i345 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %msg.i.i337, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i345)
  %cmp.not.i.i346 = icmp eq i32 %call.i.i345, 1
  br i1 %cmp.not.i.i346, label %stv0297_writereg_mask.exit335.stv0297_writereg_mask.exit351_crit_edge, label %do.end.i.i349

stv0297_writereg_mask.exit335.stv0297_writereg_mask.exit351_crit_edge: ; preds = %stv0297_writereg_mask.exit335
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit351

do.end.i.i349:                                    ; preds = %stv0297_writereg_mask.exit335
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i347 = zext i8 %conv4.i340 to i32
  %call5.i.i348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 113, i32 noundef %conv4.i.i347, i32 noundef %call.i.i345) #10
  br label %stv0297_writereg_mask.exit351

stv0297_writereg_mask.exit351:                    ; preds = %do.end.i.i349, %stv0297_writereg_mask.exit335.stv0297_writereg_mask.exit351_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i337) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i336) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i352) #6
  %167 = getelementptr inbounds [2 x i8], ptr %buf.i352, i32 0, i32 1
  %168 = ptrtoint ptr %buf.i352 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 114, ptr %buf.i352, align 1
  %169 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i353) #6
  %170 = getelementptr inbounds i8, ptr %msg.i353, i32 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -1, ptr %170, align 4
  %172 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %config, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %173, align 4
  %conv.i355 = zext i8 %175 to i16
  %176 = ptrtoint ptr %msg.i353 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv.i355, ptr %msg.i353, align 4
  %flags.i356 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i353, i32 0, i32 1
  %177 = ptrtoint ptr %flags.i356 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %flags.i356, align 2
  store i16 2, ptr %170, align 4
  %buf1.i358 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i353, i32 0, i32 3
  %178 = ptrtoint ptr %buf1.i358 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %buf.i352, ptr %buf1.i358, align 4
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %call.i359 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %msg.i353, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i359)
  %cmp.not.i360 = icmp eq i32 %call.i359, 1
  br i1 %cmp.not.i360, label %stv0297_writereg_mask.exit351.stv0297_writereg.exit364_crit_edge, label %do.end.i362

stv0297_writereg_mask.exit351.stv0297_writereg.exit364_crit_edge: ; preds = %stv0297_writereg_mask.exit351
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit364

do.end.i362:                                      ; preds = %stv0297_writereg_mask.exit351
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 114, i32 noundef 0, i32 noundef %call.i359) #10
  br label %stv0297_writereg.exit364

stv0297_writereg.exit364:                         ; preds = %do.end.i362, %stv0297_writereg_mask.exit351.stv0297_writereg.exit364_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i353) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i352) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i365) #6
  %181 = getelementptr inbounds [2 x i8], ptr %buf.i365, i32 0, i32 1
  %182 = ptrtoint ptr %buf.i365 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 115, ptr %buf.i365, align 1
  %183 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i366) #6
  %184 = getelementptr inbounds i8, ptr %msg.i366, i32 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %184, align 4
  %186 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %config, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %187, align 4
  %conv.i368 = zext i8 %189 to i16
  %190 = ptrtoint ptr %msg.i366 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv.i368, ptr %msg.i366, align 4
  %flags.i369 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366, i32 0, i32 1
  %191 = ptrtoint ptr %flags.i369 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags.i369, align 2
  store i16 2, ptr %184, align 4
  %buf1.i371 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366, i32 0, i32 3
  %192 = ptrtoint ptr %buf1.i371 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %buf.i365, ptr %buf1.i371, align 4
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %call.i372 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %msg.i366, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i372)
  %cmp.not.i373 = icmp eq i32 %call.i372, 1
  br i1 %cmp.not.i373, label %stv0297_writereg.exit364.stv0297_writereg.exit377_crit_edge, label %do.end.i375

stv0297_writereg.exit364.stv0297_writereg.exit377_crit_edge: ; preds = %stv0297_writereg.exit364
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit377

do.end.i375:                                      ; preds = %stv0297_writereg.exit364
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 115, i32 noundef 0, i32 noundef %call.i372) #10
  br label %stv0297_writereg.exit377

stv0297_writereg.exit377:                         ; preds = %do.end.i375, %stv0297_writereg.exit364.stv0297_writereg.exit377_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i366) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i365) #6
  %call.i380 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 116) #6
  %195 = trunc i32 %call.i380 to i8
  %196 = and i8 %195, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i378) #6
  %197 = getelementptr inbounds [2 x i8], ptr %buf.i.i378, i32 0, i32 1
  %198 = ptrtoint ptr %buf.i.i378 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 116, ptr %buf.i.i378, align 1
  %199 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %196, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i379) #6
  %200 = getelementptr inbounds i8, ptr %msg.i.i379, i32 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 196607, ptr %200, align 4
  %202 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %config, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %203, align 4
  %conv.i.i383 = zext i8 %205 to i16
  %206 = ptrtoint ptr %msg.i.i379 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv.i.i383, ptr %msg.i.i379, align 4
  %flags.i.i384 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i379, i32 0, i32 1
  %207 = ptrtoint ptr %flags.i.i384 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %flags.i.i384, align 2
  %buf1.i.i385 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i379, i32 0, i32 3
  %208 = ptrtoint ptr %buf1.i.i385 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %buf.i.i378, ptr %buf1.i.i385, align 4
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 4
  %call.i.i386 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %msg.i.i379, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i386)
  %cmp.not.i.i387 = icmp eq i32 %call.i.i386, 1
  br i1 %cmp.not.i.i387, label %stv0297_writereg.exit377.stv0297_writereg_mask.exit392_crit_edge, label %do.end.i.i390

stv0297_writereg.exit377.stv0297_writereg_mask.exit392_crit_edge: ; preds = %stv0297_writereg.exit377
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit392

do.end.i.i390:                                    ; preds = %stv0297_writereg.exit377
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i388 = zext i8 %196 to i32
  %call5.i.i389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 116, i32 noundef %conv4.i.i388, i32 noundef %call.i.i386) #10
  br label %stv0297_writereg_mask.exit392

stv0297_writereg_mask.exit392:                    ; preds = %do.end.i.i390, %stv0297_writereg.exit377.stv0297_writereg_mask.exit392_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i379) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i378) #6
  %call.i395 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 67) #6
  %211 = trunc i32 %call.i395 to i8
  %212 = and i8 %211, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i393) #6
  %213 = getelementptr inbounds [2 x i8], ptr %buf.i.i393, i32 0, i32 1
  %214 = ptrtoint ptr %buf.i.i393 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 67, ptr %buf.i.i393, align 1
  %215 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %212, ptr %213, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i394) #6
  %216 = getelementptr inbounds i8, ptr %msg.i.i394, i32 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 196607, ptr %216, align 4
  %218 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %config, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 4
  %conv.i.i398 = zext i8 %221 to i16
  %222 = ptrtoint ptr %msg.i.i394 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv.i.i398, ptr %msg.i.i394, align 4
  %flags.i.i399 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i394, i32 0, i32 1
  %223 = ptrtoint ptr %flags.i.i399 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %flags.i.i399, align 2
  %buf1.i.i400 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i394, i32 0, i32 3
  %224 = ptrtoint ptr %buf1.i.i400 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %buf.i.i393, ptr %buf1.i.i400, align 4
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %1, align 4
  %call.i.i401 = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %msg.i.i394, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i401)
  %cmp.not.i.i402 = icmp eq i32 %call.i.i401, 1
  br i1 %cmp.not.i.i402, label %stv0297_writereg_mask.exit392.stv0297_writereg_mask.exit407_crit_edge, label %do.end.i.i405

stv0297_writereg_mask.exit392.stv0297_writereg_mask.exit407_crit_edge: ; preds = %stv0297_writereg_mask.exit392
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit407

do.end.i.i405:                                    ; preds = %stv0297_writereg_mask.exit392
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i403 = zext i8 %212 to i32
  %call5.i.i404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 67, i32 noundef %conv4.i.i403, i32 noundef %call.i.i401) #10
  br label %stv0297_writereg_mask.exit407

stv0297_writereg_mask.exit407:                    ; preds = %do.end.i.i405, %stv0297_writereg_mask.exit392.stv0297_writereg_mask.exit407_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i394) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i393) #6
  %call.i410 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 113) #6
  %227 = trunc i32 %call.i410 to i8
  %228 = and i8 %227, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i408) #6
  %229 = getelementptr inbounds [2 x i8], ptr %buf.i.i408, i32 0, i32 1
  %230 = ptrtoint ptr %buf.i.i408 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 113, ptr %buf.i.i408, align 1
  %231 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %228, ptr %229, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i409) #6
  %232 = getelementptr inbounds i8, ptr %msg.i.i409, i32 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 196607, ptr %232, align 4
  %234 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %config, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %235, align 4
  %conv.i.i413 = zext i8 %237 to i16
  %238 = ptrtoint ptr %msg.i.i409 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %conv.i.i413, ptr %msg.i.i409, align 4
  %flags.i.i414 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i409, i32 0, i32 1
  %239 = ptrtoint ptr %flags.i.i414 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 0, ptr %flags.i.i414, align 2
  %buf1.i.i415 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i409, i32 0, i32 3
  %240 = ptrtoint ptr %buf1.i.i415 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %buf.i.i408, ptr %buf1.i.i415, align 4
  %241 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %1, align 4
  %call.i.i416 = call i32 @i2c_transfer(ptr noundef %242, ptr noundef nonnull %msg.i.i409, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i416)
  %cmp.not.i.i417 = icmp eq i32 %call.i.i416, 1
  br i1 %cmp.not.i.i417, label %stv0297_writereg_mask.exit407.stv0297_writereg_mask.exit422_crit_edge, label %do.end.i.i420

stv0297_writereg_mask.exit407.stv0297_writereg_mask.exit422_crit_edge: ; preds = %stv0297_writereg_mask.exit407
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit422

do.end.i.i420:                                    ; preds = %stv0297_writereg_mask.exit407
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i418 = zext i8 %228 to i32
  %call5.i.i419 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 113, i32 noundef %conv4.i.i418, i32 noundef %call.i.i416) #10
  br label %stv0297_writereg_mask.exit422

stv0297_writereg_mask.exit422:                    ; preds = %do.end.i.i420, %stv0297_writereg_mask.exit407.stv0297_writereg_mask.exit422_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i409) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i408) #6
  %call.i425 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 90) #6
  %243 = trunc i32 %call.i425 to i8
  %conv4.i427 = or i8 %243, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i423) #6
  %244 = getelementptr inbounds [2 x i8], ptr %buf.i.i423, i32 0, i32 1
  %245 = ptrtoint ptr %buf.i.i423 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 90, ptr %buf.i.i423, align 1
  %246 = ptrtoint ptr %244 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv4.i427, ptr %244, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i424) #6
  %247 = getelementptr inbounds i8, ptr %msg.i.i424, i32 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 196607, ptr %247, align 4
  %249 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %config, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %250, align 4
  %conv.i.i429 = zext i8 %252 to i16
  %253 = ptrtoint ptr %msg.i.i424 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv.i.i429, ptr %msg.i.i424, align 4
  %flags.i.i430 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i424, i32 0, i32 1
  %254 = ptrtoint ptr %flags.i.i430 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 0, ptr %flags.i.i430, align 2
  %buf1.i.i431 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i424, i32 0, i32 3
  %255 = ptrtoint ptr %buf1.i.i431 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %buf.i.i423, ptr %buf1.i.i431, align 4
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %1, align 4
  %call.i.i432 = call i32 @i2c_transfer(ptr noundef %257, ptr noundef nonnull %msg.i.i424, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i432)
  %cmp.not.i.i433 = icmp eq i32 %call.i.i432, 1
  br i1 %cmp.not.i.i433, label %stv0297_writereg_mask.exit422.stv0297_writereg_mask.exit438_crit_edge, label %do.end.i.i436

stv0297_writereg_mask.exit422.stv0297_writereg_mask.exit438_crit_edge: ; preds = %stv0297_writereg_mask.exit422
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit438

do.end.i.i436:                                    ; preds = %stv0297_writereg_mask.exit422
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i434 = zext i8 %conv4.i427 to i32
  %call5.i.i435 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 90, i32 noundef %conv4.i.i434, i32 noundef %call.i.i432) #10
  br label %stv0297_writereg_mask.exit438

stv0297_writereg_mask.exit438:                    ; preds = %do.end.i.i436, %stv0297_writereg_mask.exit422.stv0297_writereg_mask.exit438_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i424) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i423) #6
  %call.i441 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 91) #6
  %258 = trunc i32 %call.i441 to i8
  %conv4.i443 = or i8 %258, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i439) #6
  %259 = getelementptr inbounds [2 x i8], ptr %buf.i.i439, i32 0, i32 1
  %260 = ptrtoint ptr %buf.i.i439 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 91, ptr %buf.i.i439, align 1
  %261 = ptrtoint ptr %259 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv4.i443, ptr %259, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i440) #6
  %262 = getelementptr inbounds i8, ptr %msg.i.i440, i32 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 196607, ptr %262, align 4
  %264 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %config, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %265, align 4
  %conv.i.i445 = zext i8 %267 to i16
  %268 = ptrtoint ptr %msg.i.i440 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %conv.i.i445, ptr %msg.i.i440, align 4
  %flags.i.i446 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i440, i32 0, i32 1
  %269 = ptrtoint ptr %flags.i.i446 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 0, ptr %flags.i.i446, align 2
  %buf1.i.i447 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i440, i32 0, i32 3
  %270 = ptrtoint ptr %buf1.i.i447 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %buf.i.i439, ptr %buf1.i.i447, align 4
  %271 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %1, align 4
  %call.i.i448 = call i32 @i2c_transfer(ptr noundef %272, ptr noundef nonnull %msg.i.i440, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i448)
  %cmp.not.i.i449 = icmp eq i32 %call.i.i448, 1
  br i1 %cmp.not.i.i449, label %stv0297_writereg_mask.exit438.stv0297_writereg_mask.exit454_crit_edge, label %do.end.i.i452

stv0297_writereg_mask.exit438.stv0297_writereg_mask.exit454_crit_edge: ; preds = %stv0297_writereg_mask.exit438
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit454

do.end.i.i452:                                    ; preds = %stv0297_writereg_mask.exit438
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i450 = zext i8 %conv4.i443 to i32
  %call5.i.i451 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 91, i32 noundef %conv4.i.i450, i32 noundef %call.i.i448) #10
  br label %stv0297_writereg_mask.exit454

stv0297_writereg_mask.exit454:                    ; preds = %do.end.i.i452, %stv0297_writereg_mask.exit438.stv0297_writereg_mask.exit454_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i440) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i439) #6
  %call.i457 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 91) #6
  %273 = trunc i32 %call.i457 to i8
  %274 = and i8 %273, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i455) #6
  %275 = getelementptr inbounds [2 x i8], ptr %buf.i.i455, i32 0, i32 1
  %276 = ptrtoint ptr %buf.i.i455 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 91, ptr %buf.i.i455, align 1
  %277 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %274, ptr %275, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i456) #6
  %278 = getelementptr inbounds i8, ptr %msg.i.i456, i32 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 196607, ptr %278, align 4
  %280 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %config, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %281, align 4
  %conv.i.i460 = zext i8 %283 to i16
  %284 = ptrtoint ptr %msg.i.i456 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %conv.i.i460, ptr %msg.i.i456, align 4
  %flags.i.i461 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i456, i32 0, i32 1
  %285 = ptrtoint ptr %flags.i.i461 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 0, ptr %flags.i.i461, align 2
  %buf1.i.i462 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i456, i32 0, i32 3
  %286 = ptrtoint ptr %buf1.i.i462 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %buf.i.i455, ptr %buf1.i.i462, align 4
  %287 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %1, align 4
  %call.i.i463 = call i32 @i2c_transfer(ptr noundef %288, ptr noundef nonnull %msg.i.i456, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i463)
  %cmp.not.i.i464 = icmp eq i32 %call.i.i463, 1
  br i1 %cmp.not.i.i464, label %stv0297_writereg_mask.exit454.stv0297_writereg_mask.exit469_crit_edge, label %do.end.i.i467

stv0297_writereg_mask.exit454.stv0297_writereg_mask.exit469_crit_edge: ; preds = %stv0297_writereg_mask.exit454
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit469

do.end.i.i467:                                    ; preds = %stv0297_writereg_mask.exit454
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i465 = zext i8 %274 to i32
  %call5.i.i466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 91, i32 noundef %conv4.i.i465, i32 noundef %call.i.i463) #10
  br label %stv0297_writereg_mask.exit469

stv0297_writereg_mask.exit469:                    ; preds = %do.end.i.i467, %stv0297_writereg_mask.exit454.stv0297_writereg_mask.exit469_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i456) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i455) #6
  %call.i472 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 91) #6
  %289 = trunc i32 %call.i472 to i8
  %290 = and i8 %289, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i470) #6
  %291 = getelementptr inbounds [2 x i8], ptr %buf.i.i470, i32 0, i32 1
  %292 = ptrtoint ptr %buf.i.i470 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 91, ptr %buf.i.i470, align 1
  %293 = ptrtoint ptr %291 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %290, ptr %291, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i471) #6
  %294 = getelementptr inbounds i8, ptr %msg.i.i471, i32 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 196607, ptr %294, align 4
  %296 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %config, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %297, align 4
  %conv.i.i475 = zext i8 %299 to i16
  %300 = ptrtoint ptr %msg.i.i471 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %conv.i.i475, ptr %msg.i.i471, align 4
  %flags.i.i476 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i471, i32 0, i32 1
  %301 = ptrtoint ptr %flags.i.i476 to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 0, ptr %flags.i.i476, align 2
  %buf1.i.i477 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i471, i32 0, i32 3
  %302 = ptrtoint ptr %buf1.i.i477 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %buf.i.i470, ptr %buf1.i.i477, align 4
  %303 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %1, align 4
  %call.i.i478 = call i32 @i2c_transfer(ptr noundef %304, ptr noundef nonnull %msg.i.i471, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i478)
  %cmp.not.i.i479 = icmp eq i32 %call.i.i478, 1
  br i1 %cmp.not.i.i479, label %stv0297_writereg_mask.exit469.stv0297_writereg_mask.exit484_crit_edge, label %do.end.i.i482

stv0297_writereg_mask.exit469.stv0297_writereg_mask.exit484_crit_edge: ; preds = %stv0297_writereg_mask.exit469
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit484

do.end.i.i482:                                    ; preds = %stv0297_writereg_mask.exit469
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i480 = zext i8 %290 to i32
  %call5.i.i481 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 91, i32 noundef %conv4.i.i480, i32 noundef %call.i.i478) #10
  br label %stv0297_writereg_mask.exit484

stv0297_writereg_mask.exit484:                    ; preds = %do.end.i.i482, %stv0297_writereg_mask.exit469.stv0297_writereg_mask.exit484_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i471) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i470) #6
  %call.i487 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 90) #6
  %305 = trunc i32 %call.i487 to i8
  %conv4.i489 = or i8 %305, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i485) #6
  %306 = getelementptr inbounds [2 x i8], ptr %buf.i.i485, i32 0, i32 1
  %307 = ptrtoint ptr %buf.i.i485 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 90, ptr %buf.i.i485, align 1
  %308 = ptrtoint ptr %306 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %conv4.i489, ptr %306, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i486) #6
  %309 = getelementptr inbounds i8, ptr %msg.i.i486, i32 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 196607, ptr %309, align 4
  %311 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %config, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %312, align 4
  %conv.i.i491 = zext i8 %314 to i16
  %315 = ptrtoint ptr %msg.i.i486 to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 %conv.i.i491, ptr %msg.i.i486, align 4
  %flags.i.i492 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i486, i32 0, i32 1
  %316 = ptrtoint ptr %flags.i.i492 to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 0, ptr %flags.i.i492, align 2
  %buf1.i.i493 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i486, i32 0, i32 3
  %317 = ptrtoint ptr %buf1.i.i493 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %buf.i.i485, ptr %buf1.i.i493, align 4
  %318 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %1, align 4
  %call.i.i494 = call i32 @i2c_transfer(ptr noundef %319, ptr noundef nonnull %msg.i.i486, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i494)
  %cmp.not.i.i495 = icmp eq i32 %call.i.i494, 1
  br i1 %cmp.not.i.i495, label %stv0297_writereg_mask.exit484.stv0297_writereg_mask.exit500_crit_edge, label %do.end.i.i498

stv0297_writereg_mask.exit484.stv0297_writereg_mask.exit500_crit_edge: ; preds = %stv0297_writereg_mask.exit484
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit500

do.end.i.i498:                                    ; preds = %stv0297_writereg_mask.exit484
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i496 = zext i8 %conv4.i489 to i32
  %call5.i.i497 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 90, i32 noundef %conv4.i.i496, i32 noundef %call.i.i494) #10
  br label %stv0297_writereg_mask.exit500

stv0297_writereg_mask.exit500:                    ; preds = %do.end.i.i498, %stv0297_writereg_mask.exit484.stv0297_writereg_mask.exit500_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i486) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i485) #6
  %call.i503 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 106) #6
  %320 = trunc i32 %call.i503 to i8
  %321 = and i8 %320, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i501) #6
  %322 = getelementptr inbounds [2 x i8], ptr %buf.i.i501, i32 0, i32 1
  %323 = ptrtoint ptr %buf.i.i501 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 106, ptr %buf.i.i501, align 1
  %324 = ptrtoint ptr %322 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %321, ptr %322, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i502) #6
  %325 = getelementptr inbounds i8, ptr %msg.i.i502, i32 4
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 196607, ptr %325, align 4
  %327 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %config, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %328, align 4
  %conv.i.i506 = zext i8 %330 to i16
  %331 = ptrtoint ptr %msg.i.i502 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %conv.i.i506, ptr %msg.i.i502, align 4
  %flags.i.i507 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i502, i32 0, i32 1
  %332 = ptrtoint ptr %flags.i.i507 to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 0, ptr %flags.i.i507, align 2
  %buf1.i.i508 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i502, i32 0, i32 3
  %333 = ptrtoint ptr %buf1.i.i508 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %buf.i.i501, ptr %buf1.i.i508, align 4
  %334 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %1, align 4
  %call.i.i509 = call i32 @i2c_transfer(ptr noundef %335, ptr noundef nonnull %msg.i.i502, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i509)
  %cmp.not.i.i510 = icmp eq i32 %call.i.i509, 1
  br i1 %cmp.not.i.i510, label %stv0297_writereg_mask.exit500.stv0297_writereg_mask.exit515_crit_edge, label %do.end.i.i513

stv0297_writereg_mask.exit500.stv0297_writereg_mask.exit515_crit_edge: ; preds = %stv0297_writereg_mask.exit500
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit515

do.end.i.i513:                                    ; preds = %stv0297_writereg_mask.exit500
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i511 = zext i8 %321 to i32
  %call5.i.i512 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 106, i32 noundef %conv4.i.i511, i32 noundef %call.i.i509) #10
  br label %stv0297_writereg_mask.exit515

stv0297_writereg_mask.exit515:                    ; preds = %do.end.i.i513, %stv0297_writereg_mask.exit500.stv0297_writereg_mask.exit515_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i502) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i501) #6
  %call.i518 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -127) #6
  %336 = trunc i32 %call.i518 to i8
  %conv4.i520 = or i8 %336, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i516) #6
  %337 = getelementptr inbounds [2 x i8], ptr %buf.i.i516, i32 0, i32 1
  %338 = ptrtoint ptr %buf.i.i516 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 -127, ptr %buf.i.i516, align 1
  %339 = ptrtoint ptr %337 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %conv4.i520, ptr %337, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i517) #6
  %340 = getelementptr inbounds i8, ptr %msg.i.i517, i32 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 196607, ptr %340, align 4
  %342 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %config, align 4
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %343, align 4
  %conv.i.i522 = zext i8 %345 to i16
  %346 = ptrtoint ptr %msg.i.i517 to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 %conv.i.i522, ptr %msg.i.i517, align 4
  %flags.i.i523 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i517, i32 0, i32 1
  %347 = ptrtoint ptr %flags.i.i523 to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 0, ptr %flags.i.i523, align 2
  %buf1.i.i524 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i517, i32 0, i32 3
  %348 = ptrtoint ptr %buf1.i.i524 to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %buf.i.i516, ptr %buf1.i.i524, align 4
  %349 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %1, align 4
  %call.i.i525 = call i32 @i2c_transfer(ptr noundef %350, ptr noundef nonnull %msg.i.i517, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i525)
  %cmp.not.i.i526 = icmp eq i32 %call.i.i525, 1
  br i1 %cmp.not.i.i526, label %stv0297_writereg_mask.exit515.stv0297_writereg_mask.exit531_crit_edge, label %do.end.i.i529

stv0297_writereg_mask.exit515.stv0297_writereg_mask.exit531_crit_edge: ; preds = %stv0297_writereg_mask.exit515
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit531

do.end.i.i529:                                    ; preds = %stv0297_writereg_mask.exit515
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i527 = zext i8 %conv4.i520 to i32
  %call5.i.i528 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 129, i32 noundef %conv4.i.i527, i32 noundef %call.i.i525) #10
  br label %stv0297_writereg_mask.exit531

stv0297_writereg_mask.exit531:                    ; preds = %do.end.i.i529, %stv0297_writereg_mask.exit515.stv0297_writereg_mask.exit531_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i517) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i516) #6
  %call.i534 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -127) #6
  %351 = trunc i32 %call.i534 to i8
  %352 = and i8 %351, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i532) #6
  %353 = getelementptr inbounds [2 x i8], ptr %buf.i.i532, i32 0, i32 1
  %354 = ptrtoint ptr %buf.i.i532 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 -127, ptr %buf.i.i532, align 1
  %355 = ptrtoint ptr %353 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %352, ptr %353, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i533) #6
  %356 = getelementptr inbounds i8, ptr %msg.i.i533, i32 4
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 196607, ptr %356, align 4
  %358 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %config, align 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %359, align 4
  %conv.i.i537 = zext i8 %361 to i16
  %362 = ptrtoint ptr %msg.i.i533 to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 %conv.i.i537, ptr %msg.i.i533, align 4
  %flags.i.i538 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i533, i32 0, i32 1
  %363 = ptrtoint ptr %flags.i.i538 to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 0, ptr %flags.i.i538, align 2
  %buf1.i.i539 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i533, i32 0, i32 3
  %364 = ptrtoint ptr %buf1.i.i539 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %buf.i.i532, ptr %buf1.i.i539, align 4
  %365 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %1, align 4
  %call.i.i540 = call i32 @i2c_transfer(ptr noundef %366, ptr noundef nonnull %msg.i.i533, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i540)
  %cmp.not.i.i541 = icmp eq i32 %call.i.i540, 1
  br i1 %cmp.not.i.i541, label %stv0297_writereg_mask.exit531.stv0297_writereg_mask.exit546_crit_edge, label %do.end.i.i544

stv0297_writereg_mask.exit531.stv0297_writereg_mask.exit546_crit_edge: ; preds = %stv0297_writereg_mask.exit531
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit546

do.end.i.i544:                                    ; preds = %stv0297_writereg_mask.exit531
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i542 = zext i8 %352 to i32
  %call5.i.i543 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 129, i32 noundef %conv4.i.i542, i32 noundef %call.i.i540) #10
  br label %stv0297_writereg_mask.exit546

stv0297_writereg_mask.exit546:                    ; preds = %do.end.i.i544, %stv0297_writereg_mask.exit531.stv0297_writereg_mask.exit546_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i533) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i532) #6
  %call.i549 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -125) #6
  %367 = trunc i32 %call.i549 to i8
  %conv4.i551 = or i8 %367, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i547) #6
  %368 = getelementptr inbounds [2 x i8], ptr %buf.i.i547, i32 0, i32 1
  %369 = ptrtoint ptr %buf.i.i547 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 -125, ptr %buf.i.i547, align 1
  %370 = ptrtoint ptr %368 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %conv4.i551, ptr %368, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i548) #6
  %371 = getelementptr inbounds i8, ptr %msg.i.i548, i32 4
  %372 = ptrtoint ptr %371 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 196607, ptr %371, align 4
  %373 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %config, align 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %374, align 4
  %conv.i.i553 = zext i8 %376 to i16
  %377 = ptrtoint ptr %msg.i.i548 to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 %conv.i.i553, ptr %msg.i.i548, align 4
  %flags.i.i554 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i548, i32 0, i32 1
  %378 = ptrtoint ptr %flags.i.i554 to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 0, ptr %flags.i.i554, align 2
  %buf1.i.i555 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i548, i32 0, i32 3
  %379 = ptrtoint ptr %buf1.i.i555 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %buf.i.i547, ptr %buf1.i.i555, align 4
  %380 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %1, align 4
  %call.i.i556 = call i32 @i2c_transfer(ptr noundef %381, ptr noundef nonnull %msg.i.i548, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i556)
  %cmp.not.i.i557 = icmp eq i32 %call.i.i556, 1
  br i1 %cmp.not.i.i557, label %stv0297_writereg_mask.exit546.stv0297_writereg_mask.exit562_crit_edge, label %do.end.i.i560

stv0297_writereg_mask.exit546.stv0297_writereg_mask.exit562_crit_edge: ; preds = %stv0297_writereg_mask.exit546
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit562

do.end.i.i560:                                    ; preds = %stv0297_writereg_mask.exit546
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i558 = zext i8 %conv4.i551 to i32
  %call5.i.i559 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 131, i32 noundef %conv4.i.i558, i32 noundef %call.i.i556) #10
  br label %stv0297_writereg_mask.exit562

stv0297_writereg_mask.exit562:                    ; preds = %do.end.i.i560, %stv0297_writereg_mask.exit546.stv0297_writereg_mask.exit562_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i548) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i547) #6
  %call.i565 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -125) #6
  %382 = trunc i32 %call.i565 to i8
  %383 = and i8 %382, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i563) #6
  %384 = getelementptr inbounds [2 x i8], ptr %buf.i.i563, i32 0, i32 1
  %385 = ptrtoint ptr %buf.i.i563 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 -125, ptr %buf.i.i563, align 1
  %386 = ptrtoint ptr %384 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %383, ptr %384, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i564) #6
  %387 = getelementptr inbounds i8, ptr %msg.i.i564, i32 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 196607, ptr %387, align 4
  %389 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %config, align 4
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %390, align 4
  %conv.i.i568 = zext i8 %392 to i16
  %393 = ptrtoint ptr %msg.i.i564 to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %conv.i.i568, ptr %msg.i.i564, align 4
  %flags.i.i569 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i564, i32 0, i32 1
  %394 = ptrtoint ptr %flags.i.i569 to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 0, ptr %flags.i.i569, align 2
  %buf1.i.i570 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i564, i32 0, i32 3
  %395 = ptrtoint ptr %buf1.i.i570 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %buf.i.i563, ptr %buf1.i.i570, align 4
  %396 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %1, align 4
  %call.i.i571 = call i32 @i2c_transfer(ptr noundef %397, ptr noundef nonnull %msg.i.i564, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i571)
  %cmp.not.i.i572 = icmp eq i32 %call.i.i571, 1
  br i1 %cmp.not.i.i572, label %stv0297_writereg_mask.exit562.stv0297_writereg_mask.exit577_crit_edge, label %do.end.i.i575

stv0297_writereg_mask.exit562.stv0297_writereg_mask.exit577_crit_edge: ; preds = %stv0297_writereg_mask.exit562
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit577

do.end.i.i575:                                    ; preds = %stv0297_writereg_mask.exit562
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i573 = zext i8 %383 to i32
  %call5.i.i574 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 131, i32 noundef %conv4.i.i573, i32 noundef %call.i.i571) #10
  br label %stv0297_writereg_mask.exit577

stv0297_writereg_mask.exit577:                    ; preds = %do.end.i.i575, %stv0297_writereg_mask.exit562.stv0297_writereg_mask.exit577_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i564) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i563) #6
  %call43 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 0)
  %call44 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 1)
  %call45 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 1)
  %call.i580 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -124) #6
  %398 = trunc i32 %call.i580 to i8
  %conv4.i582 = or i8 %398, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i578) #6
  %399 = getelementptr inbounds [2 x i8], ptr %buf.i.i578, i32 0, i32 1
  %400 = ptrtoint ptr %buf.i.i578 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 -124, ptr %buf.i.i578, align 1
  %401 = ptrtoint ptr %399 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %conv4.i582, ptr %399, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i579) #6
  %402 = getelementptr inbounds i8, ptr %msg.i.i579, i32 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 196607, ptr %402, align 4
  %404 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %config, align 4
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %405, align 4
  %conv.i.i584 = zext i8 %407 to i16
  %408 = ptrtoint ptr %msg.i.i579 to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 %conv.i.i584, ptr %msg.i.i579, align 4
  %flags.i.i585 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i579, i32 0, i32 1
  %409 = ptrtoint ptr %flags.i.i585 to i32
  call void @__asan_store2_noabort(i32 %409)
  store i16 0, ptr %flags.i.i585, align 2
  %buf1.i.i586 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i579, i32 0, i32 3
  %410 = ptrtoint ptr %buf1.i.i586 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %buf.i.i578, ptr %buf1.i.i586, align 4
  %411 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %1, align 4
  %call.i.i587 = call i32 @i2c_transfer(ptr noundef %412, ptr noundef nonnull %msg.i.i579, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i587)
  %cmp.not.i.i588 = icmp eq i32 %call.i.i587, 1
  br i1 %cmp.not.i.i588, label %stv0297_writereg_mask.exit577.stv0297_writereg_mask.exit593_crit_edge, label %do.end.i.i591

stv0297_writereg_mask.exit577.stv0297_writereg_mask.exit593_crit_edge: ; preds = %stv0297_writereg_mask.exit577
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit593

do.end.i.i591:                                    ; preds = %stv0297_writereg_mask.exit577
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i589 = zext i8 %conv4.i582 to i32
  %call5.i.i590 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 132, i32 noundef %conv4.i.i589, i32 noundef %call.i.i587) #10
  br label %stv0297_writereg_mask.exit593

stv0297_writereg_mask.exit593:                    ; preds = %do.end.i.i591, %stv0297_writereg_mask.exit577.stv0297_writereg_mask.exit593_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i579) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i578) #6
  %call.i596 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -124) #6
  %413 = trunc i32 %call.i596 to i8
  %414 = and i8 %413, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i594) #6
  %415 = getelementptr inbounds [2 x i8], ptr %buf.i.i594, i32 0, i32 1
  %416 = ptrtoint ptr %buf.i.i594 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 -124, ptr %buf.i.i594, align 1
  %417 = ptrtoint ptr %415 to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %414, ptr %415, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i595) #6
  %418 = getelementptr inbounds i8, ptr %msg.i.i595, i32 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 196607, ptr %418, align 4
  %420 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %config, align 4
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %421, align 4
  %conv.i.i599 = zext i8 %423 to i16
  %424 = ptrtoint ptr %msg.i.i595 to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 %conv.i.i599, ptr %msg.i.i595, align 4
  %flags.i.i600 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i595, i32 0, i32 1
  %425 = ptrtoint ptr %flags.i.i600 to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 0, ptr %flags.i.i600, align 2
  %buf1.i.i601 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i595, i32 0, i32 3
  %426 = ptrtoint ptr %buf1.i.i601 to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr %buf.i.i594, ptr %buf1.i.i601, align 4
  %427 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %1, align 4
  %call.i.i602 = call i32 @i2c_transfer(ptr noundef %428, ptr noundef nonnull %msg.i.i595, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i602)
  %cmp.not.i.i603 = icmp eq i32 %call.i.i602, 1
  br i1 %cmp.not.i.i603, label %stv0297_writereg_mask.exit593.stv0297_writereg_mask.exit608_crit_edge, label %do.end.i.i606

stv0297_writereg_mask.exit593.stv0297_writereg_mask.exit608_crit_edge: ; preds = %stv0297_writereg_mask.exit593
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit608

do.end.i.i606:                                    ; preds = %stv0297_writereg_mask.exit593
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i604 = zext i8 %414 to i32
  %call5.i.i605 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 132, i32 noundef %conv4.i.i604, i32 noundef %call.i.i602) #10
  br label %stv0297_writereg_mask.exit608

stv0297_writereg_mask.exit608:                    ; preds = %do.end.i.i606, %stv0297_writereg_mask.exit593.stv0297_writereg_mask.exit608_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i595) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i594) #6
  %429 = trunc i32 %call43 to i8
  %conv = and i8 %429, 15
  %call.i611 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 0) #6
  %430 = trunc i32 %call.i611 to i8
  %431 = and i8 %430, -16
  %conv4.i613 = or i8 %431, %conv
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i609) #6
  %432 = getelementptr inbounds [2 x i8], ptr %buf.i.i609, i32 0, i32 1
  %433 = ptrtoint ptr %buf.i.i609 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 0, ptr %buf.i.i609, align 1
  %434 = ptrtoint ptr %432 to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %conv4.i613, ptr %432, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i610) #6
  %435 = getelementptr inbounds i8, ptr %msg.i.i610, i32 4
  %436 = ptrtoint ptr %435 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 196607, ptr %435, align 4
  %437 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %config, align 4
  %439 = ptrtoint ptr %438 to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %438, align 4
  %conv.i.i615 = zext i8 %440 to i16
  %441 = ptrtoint ptr %msg.i.i610 to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %conv.i.i615, ptr %msg.i.i610, align 4
  %flags.i.i616 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i610, i32 0, i32 1
  %442 = ptrtoint ptr %flags.i.i616 to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 0, ptr %flags.i.i616, align 2
  %buf1.i.i617 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i610, i32 0, i32 3
  %443 = ptrtoint ptr %buf1.i.i617 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %buf.i.i609, ptr %buf1.i.i617, align 4
  %444 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %1, align 4
  %call.i.i618 = call i32 @i2c_transfer(ptr noundef %445, ptr noundef nonnull %msg.i.i610, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i618)
  %cmp.not.i.i619 = icmp eq i32 %call.i.i618, 1
  br i1 %cmp.not.i.i619, label %stv0297_writereg_mask.exit608.stv0297_writereg_mask.exit624_crit_edge, label %do.end.i.i622

stv0297_writereg_mask.exit608.stv0297_writereg_mask.exit624_crit_edge: ; preds = %stv0297_writereg_mask.exit608
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit624

do.end.i.i622:                                    ; preds = %stv0297_writereg_mask.exit608
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i620 = zext i8 %conv4.i613 to i32
  %call5.i.i621 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %conv4.i.i620, i32 noundef %call.i.i618) #10
  br label %stv0297_writereg_mask.exit624

stv0297_writereg_mask.exit624:                    ; preds = %do.end.i.i622, %stv0297_writereg_mask.exit608.stv0297_writereg_mask.exit624_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i610) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i609) #6
  %446 = trunc i32 %call44 to i8
  %conv50 = and i8 %446, -16
  %call.i627 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 1) #6
  %447 = trunc i32 %call.i627 to i8
  %448 = and i8 %447, 15
  %conv4.i629 = or i8 %448, %conv50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i625) #6
  %449 = getelementptr inbounds [2 x i8], ptr %buf.i.i625, i32 0, i32 1
  %450 = ptrtoint ptr %buf.i.i625 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 1, ptr %buf.i.i625, align 1
  %451 = ptrtoint ptr %449 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %conv4.i629, ptr %449, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i626) #6
  %452 = getelementptr inbounds i8, ptr %msg.i.i626, i32 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 196607, ptr %452, align 4
  %454 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %config, align 4
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %455, align 4
  %conv.i.i631 = zext i8 %457 to i16
  %458 = ptrtoint ptr %msg.i.i626 to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %conv.i.i631, ptr %msg.i.i626, align 4
  %flags.i.i632 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i626, i32 0, i32 1
  %459 = ptrtoint ptr %flags.i.i632 to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 0, ptr %flags.i.i632, align 2
  %buf1.i.i633 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i626, i32 0, i32 3
  %460 = ptrtoint ptr %buf1.i.i633 to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %buf.i.i625, ptr %buf1.i.i633, align 4
  %461 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %1, align 4
  %call.i.i634 = call i32 @i2c_transfer(ptr noundef %462, ptr noundef nonnull %msg.i.i626, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i634)
  %cmp.not.i.i635 = icmp eq i32 %call.i.i634, 1
  br i1 %cmp.not.i.i635, label %stv0297_writereg_mask.exit624.stv0297_writereg_mask.exit640_crit_edge, label %do.end.i.i638

stv0297_writereg_mask.exit624.stv0297_writereg_mask.exit640_crit_edge: ; preds = %stv0297_writereg_mask.exit624
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit640

do.end.i.i638:                                    ; preds = %stv0297_writereg_mask.exit624
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i636 = zext i8 %conv4.i629 to i32
  %call5.i.i637 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %conv4.i.i636, i32 noundef %call.i.i634) #10
  br label %stv0297_writereg_mask.exit640

stv0297_writereg_mask.exit640:                    ; preds = %do.end.i.i638, %stv0297_writereg_mask.exit624.stv0297_writereg_mask.exit640_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i626) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i625) #6
  %463 = trunc i32 %call45 to i8
  %conv52 = and i8 %463, 15
  %call.i643 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 1) #6
  %464 = trunc i32 %call.i643 to i8
  %465 = and i8 %464, -16
  %conv4.i645 = or i8 %465, %conv52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i641) #6
  %466 = getelementptr inbounds [2 x i8], ptr %buf.i.i641, i32 0, i32 1
  %467 = ptrtoint ptr %buf.i.i641 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 1, ptr %buf.i.i641, align 1
  %468 = ptrtoint ptr %466 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %conv4.i645, ptr %466, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i642) #6
  %469 = getelementptr inbounds i8, ptr %msg.i.i642, i32 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 196607, ptr %469, align 4
  %471 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %config, align 4
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %472, align 4
  %conv.i.i647 = zext i8 %474 to i16
  %475 = ptrtoint ptr %msg.i.i642 to i32
  call void @__asan_store2_noabort(i32 %475)
  store i16 %conv.i.i647, ptr %msg.i.i642, align 4
  %flags.i.i648 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i642, i32 0, i32 1
  %476 = ptrtoint ptr %flags.i.i648 to i32
  call void @__asan_store2_noabort(i32 %476)
  store i16 0, ptr %flags.i.i648, align 2
  %buf1.i.i649 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i642, i32 0, i32 3
  %477 = ptrtoint ptr %buf1.i.i649 to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %buf.i.i641, ptr %buf1.i.i649, align 4
  %478 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %1, align 4
  %call.i.i650 = call i32 @i2c_transfer(ptr noundef %479, ptr noundef nonnull %msg.i.i642, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i650)
  %cmp.not.i.i651 = icmp eq i32 %call.i.i650, 1
  br i1 %cmp.not.i.i651, label %stv0297_writereg_mask.exit640.stv0297_writereg_mask.exit656_crit_edge, label %do.end.i.i654

stv0297_writereg_mask.exit640.stv0297_writereg_mask.exit656_crit_edge: ; preds = %stv0297_writereg_mask.exit640
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit656

do.end.i.i654:                                    ; preds = %stv0297_writereg_mask.exit640
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i652 = zext i8 %conv4.i645 to i32
  %call5.i.i653 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %conv4.i.i652, i32 noundef %call.i.i650) #10
  br label %stv0297_writereg_mask.exit656

stv0297_writereg_mask.exit656:                    ; preds = %do.end.i.i654, %stv0297_writereg_mask.exit640.stv0297_writereg_mask.exit656_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i642) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i641) #6
  %call.i659 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -121) #6
  %480 = trunc i32 %call.i659 to i8
  %481 = and i8 %480, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i657) #6
  %482 = getelementptr inbounds [2 x i8], ptr %buf.i.i657, i32 0, i32 1
  %483 = ptrtoint ptr %buf.i.i657 to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 -121, ptr %buf.i.i657, align 1
  %484 = ptrtoint ptr %482 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %481, ptr %482, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i658) #6
  %485 = getelementptr inbounds i8, ptr %msg.i.i658, i32 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 196607, ptr %485, align 4
  %487 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %config, align 4
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %488, align 4
  %conv.i.i662 = zext i8 %490 to i16
  %491 = ptrtoint ptr %msg.i.i658 to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 %conv.i.i662, ptr %msg.i.i658, align 4
  %flags.i.i663 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i658, i32 0, i32 1
  %492 = ptrtoint ptr %flags.i.i663 to i32
  call void @__asan_store2_noabort(i32 %492)
  store i16 0, ptr %flags.i.i663, align 2
  %buf1.i.i664 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i658, i32 0, i32 3
  %493 = ptrtoint ptr %buf1.i.i664 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %buf.i.i657, ptr %buf1.i.i664, align 4
  %494 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %1, align 4
  %call.i.i665 = call i32 @i2c_transfer(ptr noundef %495, ptr noundef nonnull %msg.i.i658, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i665)
  %cmp.not.i.i666 = icmp eq i32 %call.i.i665, 1
  br i1 %cmp.not.i.i666, label %stv0297_writereg_mask.exit656.stv0297_writereg_mask.exit671_crit_edge, label %do.end.i.i669

stv0297_writereg_mask.exit656.stv0297_writereg_mask.exit671_crit_edge: ; preds = %stv0297_writereg_mask.exit656
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit671

do.end.i.i669:                                    ; preds = %stv0297_writereg_mask.exit656
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i667 = zext i8 %481 to i32
  %call5.i.i668 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 135, i32 noundef %conv4.i.i667, i32 noundef %call.i.i665) #10
  br label %stv0297_writereg_mask.exit671

stv0297_writereg_mask.exit671:                    ; preds = %do.end.i.i669, %stv0297_writereg_mask.exit656.stv0297_writereg_mask.exit671_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i658) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i657) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i672) #6
  %496 = getelementptr inbounds [2 x i8], ptr %buf.i672, i32 0, i32 1
  %497 = ptrtoint ptr %buf.i672 to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 99, ptr %buf.i672, align 1
  %498 = ptrtoint ptr %496 to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 0, ptr %496, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i673) #6
  %499 = getelementptr inbounds i8, ptr %msg.i673, i32 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 -1, ptr %499, align 4
  %501 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %config, align 4
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %502, align 4
  %conv.i675 = zext i8 %504 to i16
  %505 = ptrtoint ptr %msg.i673 to i32
  call void @__asan_store2_noabort(i32 %505)
  store i16 %conv.i675, ptr %msg.i673, align 4
  %flags.i676 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i673, i32 0, i32 1
  %506 = ptrtoint ptr %flags.i676 to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 0, ptr %flags.i676, align 2
  store i16 2, ptr %499, align 4
  %buf1.i678 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i673, i32 0, i32 3
  %507 = ptrtoint ptr %buf1.i678 to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %buf.i672, ptr %buf1.i678, align 4
  %508 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %1, align 4
  %call.i679 = call i32 @i2c_transfer(ptr noundef %509, ptr noundef nonnull %msg.i673, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i679)
  %cmp.not.i680 = icmp eq i32 %call.i679, 1
  br i1 %cmp.not.i680, label %stv0297_writereg_mask.exit671.stv0297_writereg.exit684_crit_edge, label %do.end.i682

stv0297_writereg_mask.exit671.stv0297_writereg.exit684_crit_edge: ; preds = %stv0297_writereg_mask.exit671
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit684

do.end.i682:                                      ; preds = %stv0297_writereg_mask.exit671
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i681 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 99, i32 noundef 0, i32 noundef %call.i679) #10
  br label %stv0297_writereg.exit684

stv0297_writereg.exit684:                         ; preds = %do.end.i682, %stv0297_writereg_mask.exit671.stv0297_writereg.exit684_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i673) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i672) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i685) #6
  %510 = getelementptr inbounds [2 x i8], ptr %buf.i685, i32 0, i32 1
  %511 = ptrtoint ptr %buf.i685 to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 100, ptr %buf.i685, align 1
  %512 = ptrtoint ptr %510 to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 0, ptr %510, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i686) #6
  %513 = getelementptr inbounds i8, ptr %msg.i686, i32 4
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 -1, ptr %513, align 4
  %515 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %config, align 4
  %517 = ptrtoint ptr %516 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %516, align 4
  %conv.i688 = zext i8 %518 to i16
  %519 = ptrtoint ptr %msg.i686 to i32
  call void @__asan_store2_noabort(i32 %519)
  store i16 %conv.i688, ptr %msg.i686, align 4
  %flags.i689 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i686, i32 0, i32 1
  %520 = ptrtoint ptr %flags.i689 to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 0, ptr %flags.i689, align 2
  store i16 2, ptr %513, align 4
  %buf1.i691 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i686, i32 0, i32 3
  %521 = ptrtoint ptr %buf1.i691 to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr %buf.i685, ptr %buf1.i691, align 4
  %522 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %1, align 4
  %call.i692 = call i32 @i2c_transfer(ptr noundef %523, ptr noundef nonnull %msg.i686, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i692)
  %cmp.not.i693 = icmp eq i32 %call.i692, 1
  br i1 %cmp.not.i693, label %stv0297_writereg.exit684.stv0297_writereg.exit697_crit_edge, label %do.end.i695

stv0297_writereg.exit684.stv0297_writereg.exit697_crit_edge: ; preds = %stv0297_writereg.exit684
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit697

do.end.i695:                                      ; preds = %stv0297_writereg.exit684
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i694 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 100, i32 noundef 0, i32 noundef %call.i692) #10
  br label %stv0297_writereg.exit697

stv0297_writereg.exit697:                         ; preds = %do.end.i695, %stv0297_writereg.exit684.stv0297_writereg.exit697_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i686) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i685) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i698) #6
  %524 = getelementptr inbounds [2 x i8], ptr %buf.i698, i32 0, i32 1
  %525 = ptrtoint ptr %buf.i698 to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 101, ptr %buf.i698, align 1
  %526 = ptrtoint ptr %524 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 0, ptr %524, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i699) #6
  %527 = getelementptr inbounds i8, ptr %msg.i699, i32 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 -1, ptr %527, align 4
  %529 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %config, align 4
  %531 = ptrtoint ptr %530 to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %530, align 4
  %conv.i701 = zext i8 %532 to i16
  %533 = ptrtoint ptr %msg.i699 to i32
  call void @__asan_store2_noabort(i32 %533)
  store i16 %conv.i701, ptr %msg.i699, align 4
  %flags.i702 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i699, i32 0, i32 1
  %534 = ptrtoint ptr %flags.i702 to i32
  call void @__asan_store2_noabort(i32 %534)
  store i16 0, ptr %flags.i702, align 2
  store i16 2, ptr %527, align 4
  %buf1.i704 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i699, i32 0, i32 3
  %535 = ptrtoint ptr %buf1.i704 to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %buf.i698, ptr %buf1.i704, align 4
  %536 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %1, align 4
  %call.i705 = call i32 @i2c_transfer(ptr noundef %537, ptr noundef nonnull %msg.i699, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i705)
  %cmp.not.i706 = icmp eq i32 %call.i705, 1
  br i1 %cmp.not.i706, label %stv0297_writereg.exit697.stv0297_writereg.exit710_crit_edge, label %do.end.i708

stv0297_writereg.exit697.stv0297_writereg.exit710_crit_edge: ; preds = %stv0297_writereg.exit697
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit710

do.end.i708:                                      ; preds = %stv0297_writereg.exit697
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i707 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 101, i32 noundef 0, i32 noundef %call.i705) #10
  br label %stv0297_writereg.exit710

stv0297_writereg.exit710:                         ; preds = %do.end.i708, %stv0297_writereg.exit697.stv0297_writereg.exit710_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i699) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i698) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i711) #6
  %538 = getelementptr inbounds [2 x i8], ptr %buf.i711, i32 0, i32 1
  %539 = ptrtoint ptr %buf.i711 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 102, ptr %buf.i711, align 1
  %540 = ptrtoint ptr %538 to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 0, ptr %538, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i712) #6
  %541 = getelementptr inbounds i8, ptr %msg.i712, i32 4
  %542 = ptrtoint ptr %541 to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 -1, ptr %541, align 4
  %543 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %config, align 4
  %545 = ptrtoint ptr %544 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %544, align 4
  %conv.i714 = zext i8 %546 to i16
  %547 = ptrtoint ptr %msg.i712 to i32
  call void @__asan_store2_noabort(i32 %547)
  store i16 %conv.i714, ptr %msg.i712, align 4
  %flags.i715 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i712, i32 0, i32 1
  %548 = ptrtoint ptr %flags.i715 to i32
  call void @__asan_store2_noabort(i32 %548)
  store i16 0, ptr %flags.i715, align 2
  store i16 2, ptr %541, align 4
  %buf1.i717 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i712, i32 0, i32 3
  %549 = ptrtoint ptr %buf1.i717 to i32
  call void @__asan_store4_noabort(i32 %549)
  store ptr %buf.i711, ptr %buf1.i717, align 4
  %550 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %1, align 4
  %call.i718 = call i32 @i2c_transfer(ptr noundef %551, ptr noundef nonnull %msg.i712, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i718)
  %cmp.not.i719 = icmp eq i32 %call.i718, 1
  br i1 %cmp.not.i719, label %stv0297_writereg.exit710.stv0297_writereg.exit723_crit_edge, label %do.end.i721

stv0297_writereg.exit710.stv0297_writereg.exit723_crit_edge: ; preds = %stv0297_writereg.exit710
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit723

do.end.i721:                                      ; preds = %stv0297_writereg.exit710
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i720 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 102, i32 noundef 0, i32 noundef %call.i718) #10
  br label %stv0297_writereg.exit723

stv0297_writereg.exit723:                         ; preds = %do.end.i721, %stv0297_writereg.exit710.stv0297_writereg.exit723_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i712) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i711) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i724) #6
  %552 = getelementptr inbounds [2 x i8], ptr %buf.i724, i32 0, i32 1
  %553 = ptrtoint ptr %buf.i724 to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 103, ptr %buf.i724, align 1
  %554 = ptrtoint ptr %552 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 0, ptr %552, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i725) #6
  %555 = getelementptr inbounds i8, ptr %msg.i725, i32 4
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 -1, ptr %555, align 4
  %557 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %config, align 4
  %559 = ptrtoint ptr %558 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %558, align 4
  %conv.i727 = zext i8 %560 to i16
  %561 = ptrtoint ptr %msg.i725 to i32
  call void @__asan_store2_noabort(i32 %561)
  store i16 %conv.i727, ptr %msg.i725, align 4
  %flags.i728 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i725, i32 0, i32 1
  %562 = ptrtoint ptr %flags.i728 to i32
  call void @__asan_store2_noabort(i32 %562)
  store i16 0, ptr %flags.i728, align 2
  store i16 2, ptr %555, align 4
  %buf1.i730 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i725, i32 0, i32 3
  %563 = ptrtoint ptr %buf1.i730 to i32
  call void @__asan_store4_noabort(i32 %563)
  store ptr %buf.i724, ptr %buf1.i730, align 4
  %564 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %1, align 4
  %call.i731 = call i32 @i2c_transfer(ptr noundef %565, ptr noundef nonnull %msg.i725, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i731)
  %cmp.not.i732 = icmp eq i32 %call.i731, 1
  br i1 %cmp.not.i732, label %stv0297_writereg.exit723.stv0297_writereg.exit736_crit_edge, label %do.end.i734

stv0297_writereg.exit723.stv0297_writereg.exit736_crit_edge: ; preds = %stv0297_writereg.exit723
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit736

do.end.i734:                                      ; preds = %stv0297_writereg.exit723
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i733 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 103, i32 noundef 0, i32 noundef %call.i731) #10
  br label %stv0297_writereg.exit736

stv0297_writereg.exit736:                         ; preds = %do.end.i734, %stv0297_writereg.exit723.stv0297_writereg.exit736_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i725) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i724) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i737) #6
  %566 = getelementptr inbounds [2 x i8], ptr %buf.i737, i32 0, i32 1
  %567 = ptrtoint ptr %buf.i737 to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 104, ptr %buf.i737, align 1
  %568 = ptrtoint ptr %566 to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 0, ptr %566, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i738) #6
  %569 = getelementptr inbounds i8, ptr %msg.i738, i32 4
  %570 = ptrtoint ptr %569 to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 -1, ptr %569, align 4
  %571 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %config, align 4
  %573 = ptrtoint ptr %572 to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %572, align 4
  %conv.i740 = zext i8 %574 to i16
  %575 = ptrtoint ptr %msg.i738 to i32
  call void @__asan_store2_noabort(i32 %575)
  store i16 %conv.i740, ptr %msg.i738, align 4
  %flags.i741 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i738, i32 0, i32 1
  %576 = ptrtoint ptr %flags.i741 to i32
  call void @__asan_store2_noabort(i32 %576)
  store i16 0, ptr %flags.i741, align 2
  store i16 2, ptr %569, align 4
  %buf1.i743 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i738, i32 0, i32 3
  %577 = ptrtoint ptr %buf1.i743 to i32
  call void @__asan_store4_noabort(i32 %577)
  store ptr %buf.i737, ptr %buf1.i743, align 4
  %578 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %1, align 4
  %call.i744 = call i32 @i2c_transfer(ptr noundef %579, ptr noundef nonnull %msg.i738, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i744)
  %cmp.not.i745 = icmp eq i32 %call.i744, 1
  br i1 %cmp.not.i745, label %stv0297_writereg.exit736.stv0297_writereg.exit749_crit_edge, label %do.end.i747

stv0297_writereg.exit736.stv0297_writereg.exit749_crit_edge: ; preds = %stv0297_writereg.exit736
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit749

do.end.i747:                                      ; preds = %stv0297_writereg.exit736
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i746 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 104, i32 noundef 0, i32 noundef %call.i744) #10
  br label %stv0297_writereg.exit749

stv0297_writereg.exit749:                         ; preds = %do.end.i747, %stv0297_writereg.exit736.stv0297_writereg.exit749_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i738) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i737) #6
  %call.i752 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 105) #6
  %580 = trunc i32 %call.i752 to i8
  %581 = and i8 %580, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i750) #6
  %582 = getelementptr inbounds [2 x i8], ptr %buf.i.i750, i32 0, i32 1
  %583 = ptrtoint ptr %buf.i.i750 to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 105, ptr %buf.i.i750, align 1
  %584 = ptrtoint ptr %582 to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 %581, ptr %582, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i751) #6
  %585 = getelementptr inbounds i8, ptr %msg.i.i751, i32 4
  %586 = ptrtoint ptr %585 to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 196607, ptr %585, align 4
  %587 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %config, align 4
  %589 = ptrtoint ptr %588 to i32
  call void @__asan_load1_noabort(i32 %589)
  %590 = load i8, ptr %588, align 4
  %conv.i.i755 = zext i8 %590 to i16
  %591 = ptrtoint ptr %msg.i.i751 to i32
  call void @__asan_store2_noabort(i32 %591)
  store i16 %conv.i.i755, ptr %msg.i.i751, align 4
  %flags.i.i756 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i751, i32 0, i32 1
  %592 = ptrtoint ptr %flags.i.i756 to i32
  call void @__asan_store2_noabort(i32 %592)
  store i16 0, ptr %flags.i.i756, align 2
  %buf1.i.i757 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i751, i32 0, i32 3
  %593 = ptrtoint ptr %buf1.i.i757 to i32
  call void @__asan_store4_noabort(i32 %593)
  store ptr %buf.i.i750, ptr %buf1.i.i757, align 4
  %594 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %1, align 4
  %call.i.i758 = call i32 @i2c_transfer(ptr noundef %595, ptr noundef nonnull %msg.i.i751, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i758)
  %cmp.not.i.i759 = icmp eq i32 %call.i.i758, 1
  br i1 %cmp.not.i.i759, label %stv0297_writereg.exit749.stv0297_writereg_mask.exit764_crit_edge, label %do.end.i.i762

stv0297_writereg.exit749.stv0297_writereg_mask.exit764_crit_edge: ; preds = %stv0297_writereg.exit749
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit764

do.end.i.i762:                                    ; preds = %stv0297_writereg.exit749
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i760 = zext i8 %581 to i32
  %call5.i.i761 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 105, i32 noundef %conv4.i.i760, i32 noundef %call.i.i758) #10
  br label %stv0297_writereg_mask.exit764

stv0297_writereg_mask.exit764:                    ; preds = %do.end.i.i762, %stv0297_writereg.exit749.stv0297_writereg_mask.exit764_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i751) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i750) #6
  %596 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %modulation, align 4
  %switch.tableidx1067 = add i32 %597, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx1067)
  %598 = icmp ult i32 %switch.tableidx1067, 5
  br i1 %598, label %switch.lookup1066, label %stv0297_writereg_mask.exit764.stv0297_set_qam.exit_crit_edge

stv0297_writereg_mask.exit764.stv0297_set_qam.exit_crit_edge: ; preds = %stv0297_writereg_mask.exit764
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_set_qam.exit

switch.lookup1066:                                ; preds = %stv0297_writereg_mask.exit764
  %switch.gep1068 = getelementptr inbounds [5 x i8], ptr @switch.table.stv0297_set_frontend.15, i32 0, i32 %switch.tableidx1067
  %599 = ptrtoint ptr %switch.gep1068 to i32
  call void @__asan_load1_noabort(i32 %599)
  %switch.load1069 = load i8, ptr %switch.gep1068, align 1
  %call.i.i767 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 0) #6
  %600 = trunc i32 %call.i.i767 to i8
  %601 = and i8 %600, -113
  %conv4.i.i768 = or i8 %601, %switch.load1069
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i765) #6
  %602 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i765, i32 0, i32 1
  %603 = ptrtoint ptr %buf.i.i.i765 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 0, ptr %buf.i.i.i765, align 1
  %604 = ptrtoint ptr %602 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %conv4.i.i768, ptr %602, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i766) #6
  %605 = getelementptr inbounds i8, ptr %msg.i.i.i766, i32 4
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 196607, ptr %605, align 4
  %607 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %config, align 4
  %609 = ptrtoint ptr %608 to i32
  call void @__asan_load1_noabort(i32 %609)
  %610 = load i8, ptr %608, align 4
  %conv.i.i.i770 = zext i8 %610 to i16
  %611 = ptrtoint ptr %msg.i.i.i766 to i32
  call void @__asan_store2_noabort(i32 %611)
  store i16 %conv.i.i.i770, ptr %msg.i.i.i766, align 4
  %flags.i.i.i771 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i766, i32 0, i32 1
  %612 = ptrtoint ptr %flags.i.i.i771 to i32
  call void @__asan_store2_noabort(i32 %612)
  store i16 0, ptr %flags.i.i.i771, align 2
  %buf1.i.i.i772 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i766, i32 0, i32 3
  %613 = ptrtoint ptr %buf1.i.i.i772 to i32
  call void @__asan_store4_noabort(i32 %613)
  store ptr %buf.i.i.i765, ptr %buf1.i.i.i772, align 4
  %614 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %1, align 4
  %call.i.i.i773 = call i32 @i2c_transfer(ptr noundef %615, ptr noundef nonnull %msg.i.i.i766, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i773)
  %cmp.not.i.i.i774 = icmp eq i32 %call.i.i.i773, 1
  br i1 %cmp.not.i.i.i774, label %switch.lookup1066.stv0297_writereg_mask.exit.i778_crit_edge, label %do.end.i.i.i777

switch.lookup1066.stv0297_writereg_mask.exit.i778_crit_edge: ; preds = %switch.lookup1066
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit.i778

do.end.i.i.i777:                                  ; preds = %switch.lookup1066
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i.i775 = zext i8 %conv4.i.i768 to i32
  %call5.i.i.i776 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %conv4.i.i.i775, i32 noundef %call.i.i.i773) #10
  br label %stv0297_writereg_mask.exit.i778

stv0297_writereg_mask.exit.i778:                  ; preds = %do.end.i.i.i777, %switch.lookup1066.stv0297_writereg_mask.exit.i778_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i766) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i765) #6
  br label %stv0297_set_qam.exit

stv0297_set_qam.exit:                             ; preds = %stv0297_writereg_mask.exit.i778, %stv0297_writereg_mask.exit764.stv0297_set_qam.exit_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %616 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %symbol_rate, align 4
  %div = udiv i32 %617, 1000
  %mul.i = shl i32 %div, 17
  %div.i = sdiv i32 %mul.i, 7225
  %mul1.i = shl i32 %div.i, 13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i779) #6
  %618 = getelementptr inbounds [2 x i8], ptr %buf.i.i779, i32 0, i32 1
  %619 = ptrtoint ptr %buf.i.i779 to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 85, ptr %buf.i.i779, align 1
  %620 = ptrtoint ptr %618 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 0, ptr %618, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i780) #6
  %621 = getelementptr inbounds i8, ptr %msg.i.i780, i32 4
  %622 = ptrtoint ptr %621 to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 196607, ptr %621, align 4
  %623 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %config, align 4
  %625 = ptrtoint ptr %624 to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %624, align 4
  %conv.i.i782 = zext i8 %626 to i16
  %627 = ptrtoint ptr %msg.i.i780 to i32
  call void @__asan_store2_noabort(i32 %627)
  store i16 %conv.i.i782, ptr %msg.i.i780, align 4
  %flags.i.i783 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i780, i32 0, i32 1
  %628 = ptrtoint ptr %flags.i.i783 to i32
  call void @__asan_store2_noabort(i32 %628)
  store i16 0, ptr %flags.i.i783, align 2
  %buf1.i.i784 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i780, i32 0, i32 3
  %629 = ptrtoint ptr %buf1.i.i784 to i32
  call void @__asan_store4_noabort(i32 %629)
  store ptr %buf.i.i779, ptr %buf1.i.i784, align 4
  %630 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %1, align 4
  %call.i.i785 = call i32 @i2c_transfer(ptr noundef %631, ptr noundef nonnull %msg.i.i780, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i785)
  %cmp.not.i.i786 = icmp eq i32 %call.i.i785, 1
  br i1 %cmp.not.i.i786, label %stv0297_set_qam.exit.stv0297_writereg.exit.i789_crit_edge, label %do.end.i.i788

stv0297_set_qam.exit.stv0297_writereg.exit.i789_crit_edge: ; preds = %stv0297_set_qam.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit.i789

do.end.i.i788:                                    ; preds = %stv0297_set_qam.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i787 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 85, i32 noundef 0, i32 noundef %call.i.i785) #10
  br label %stv0297_writereg.exit.i789

stv0297_writereg.exit.i789:                       ; preds = %do.end.i.i788, %stv0297_set_qam.exit.stv0297_writereg.exit.i789_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i780) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i779) #6
  %632 = lshr exact i32 %mul1.i, 8
  %conv2.i = trunc i32 %632 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i18.i) #6
  %633 = getelementptr inbounds [2 x i8], ptr %buf.i18.i, i32 0, i32 1
  %634 = ptrtoint ptr %buf.i18.i to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 86, ptr %buf.i18.i, align 1
  %635 = ptrtoint ptr %633 to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 %conv2.i, ptr %633, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19.i) #6
  %636 = getelementptr inbounds i8, ptr %msg.i19.i, i32 4
  %637 = ptrtoint ptr %636 to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 196607, ptr %636, align 4
  %638 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %config, align 4
  %640 = ptrtoint ptr %639 to i32
  call void @__asan_load1_noabort(i32 %640)
  %641 = load i8, ptr %639, align 4
  %conv.i21.i = zext i8 %641 to i16
  %642 = ptrtoint ptr %msg.i19.i to i32
  call void @__asan_store2_noabort(i32 %642)
  store i16 %conv.i21.i, ptr %msg.i19.i, align 4
  %flags.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 0, i32 1
  %643 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_store2_noabort(i32 %643)
  store i16 0, ptr %flags.i22.i, align 2
  %buf1.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 0, i32 3
  %644 = ptrtoint ptr %buf1.i24.i to i32
  call void @__asan_store4_noabort(i32 %644)
  store ptr %buf.i18.i, ptr %buf1.i24.i, align 4
  %645 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %1, align 4
  %call.i25.i = call i32 @i2c_transfer(ptr noundef %646, ptr noundef nonnull %msg.i19.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25.i)
  %cmp.not.i26.i = icmp eq i32 %call.i25.i, 1
  br i1 %cmp.not.i26.i, label %stv0297_writereg.exit.i789.stv0297_writereg.exit29.i_crit_edge, label %do.end.i28.i

stv0297_writereg.exit.i789.stv0297_writereg.exit29.i_crit_edge: ; preds = %stv0297_writereg.exit.i789
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit29.i

do.end.i28.i:                                     ; preds = %stv0297_writereg.exit.i789
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i790 = and i32 %632, 224
  %call5.i27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 86, i32 noundef %conv4.i.i790, i32 noundef %call.i25.i) #10
  br label %stv0297_writereg.exit29.i

stv0297_writereg.exit29.i:                        ; preds = %do.end.i28.i, %stv0297_writereg.exit.i789.stv0297_writereg.exit29.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18.i) #6
  %647 = lshr i32 %mul1.i, 16
  %conv5.i = trunc i32 %647 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i30.i) #6
  %648 = getelementptr inbounds [2 x i8], ptr %buf.i30.i, i32 0, i32 1
  %649 = ptrtoint ptr %buf.i30.i to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 87, ptr %buf.i30.i, align 1
  %650 = ptrtoint ptr %648 to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 %conv5.i, ptr %648, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31.i) #6
  %651 = getelementptr inbounds i8, ptr %msg.i31.i, i32 4
  %652 = ptrtoint ptr %651 to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 196607, ptr %651, align 4
  %653 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %config, align 4
  %655 = ptrtoint ptr %654 to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %654, align 4
  %conv.i33.i = zext i8 %656 to i16
  %657 = ptrtoint ptr %msg.i31.i to i32
  call void @__asan_store2_noabort(i32 %657)
  store i16 %conv.i33.i, ptr %msg.i31.i, align 4
  %flags.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 1
  %658 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_store2_noabort(i32 %658)
  store i16 0, ptr %flags.i34.i, align 2
  %buf1.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i, i32 0, i32 3
  %659 = ptrtoint ptr %buf1.i36.i to i32
  call void @__asan_store4_noabort(i32 %659)
  store ptr %buf.i30.i, ptr %buf1.i36.i, align 4
  %660 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %1, align 4
  %call.i37.i = call i32 @i2c_transfer(ptr noundef %661, ptr noundef nonnull %msg.i31.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i37.i)
  %cmp.not.i38.i = icmp eq i32 %call.i37.i, 1
  br i1 %cmp.not.i38.i, label %stv0297_writereg.exit29.i.stv0297_writereg.exit42.i_crit_edge, label %do.end.i41.i

stv0297_writereg.exit29.i.stv0297_writereg.exit42.i_crit_edge: ; preds = %stv0297_writereg.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit42.i

do.end.i41.i:                                     ; preds = %stv0297_writereg.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i39.i = and i32 %647, 255
  %call5.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 87, i32 noundef %conv4.i39.i, i32 noundef %call.i37.i) #10
  br label %stv0297_writereg.exit42.i

stv0297_writereg.exit42.i:                        ; preds = %do.end.i41.i, %stv0297_writereg.exit29.i.stv0297_writereg.exit42.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i30.i) #6
  %662 = lshr i32 %mul1.i, 24
  %conv8.i = trunc i32 %662 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i43.i) #6
  %663 = getelementptr inbounds [2 x i8], ptr %buf.i43.i, i32 0, i32 1
  %664 = ptrtoint ptr %buf.i43.i to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 88, ptr %buf.i43.i, align 1
  %665 = ptrtoint ptr %663 to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 %conv8.i, ptr %663, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44.i) #6
  %666 = getelementptr inbounds i8, ptr %msg.i44.i, i32 4
  %667 = ptrtoint ptr %666 to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 196607, ptr %666, align 4
  %668 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %config, align 4
  %670 = ptrtoint ptr %669 to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %669, align 4
  %conv.i46.i = zext i8 %671 to i16
  %672 = ptrtoint ptr %msg.i44.i to i32
  call void @__asan_store2_noabort(i32 %672)
  store i16 %conv.i46.i, ptr %msg.i44.i, align 4
  %flags.i47.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i, i32 0, i32 1
  %673 = ptrtoint ptr %flags.i47.i to i32
  call void @__asan_store2_noabort(i32 %673)
  store i16 0, ptr %flags.i47.i, align 2
  %buf1.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i, i32 0, i32 3
  %674 = ptrtoint ptr %buf1.i49.i to i32
  call void @__asan_store4_noabort(i32 %674)
  store ptr %buf.i43.i, ptr %buf1.i49.i, align 4
  %675 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %1, align 4
  %call.i50.i = call i32 @i2c_transfer(ptr noundef %676, ptr noundef nonnull %msg.i44.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50.i)
  %cmp.not.i51.i = icmp eq i32 %call.i50.i, 1
  br i1 %cmp.not.i51.i, label %stv0297_writereg.exit42.i.stv0297_set_symbolrate.exit_crit_edge, label %do.end.i54.i

stv0297_writereg.exit42.i.stv0297_set_symbolrate.exit_crit_edge: ; preds = %stv0297_writereg.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_set_symbolrate.exit

do.end.i54.i:                                     ; preds = %stv0297_writereg.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 88, i32 noundef %662, i32 noundef %call.i50.i) #10
  br label %stv0297_set_symbolrate.exit

stv0297_set_symbolrate.exit:                      ; preds = %do.end.i54.i, %stv0297_writereg.exit42.i.stv0297_set_symbolrate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i43.i) #6
  %677 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %symbol_rate, align 4
  %div66 = udiv i32 %678, 1000
  %mul.i795 = shl nsw i32 %sweeprate.1, 18
  %div.i796 = sdiv i32 %mul.i795, %div66
  %mul1.i797 = shl i32 %div.i796, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i797)
  %cmp19.i = icmp slt i32 %mul1.i797, 0
  %tmp.0.v.i = select i1 %cmp19.i, i32 -500000, i32 500000
  %tmp.0.i = add i32 %tmp.0.v.i, %mul1.i797
  %div3.i = sdiv i32 %tmp.0.i, 1000000
  %conv4.i798 = trunc i32 %div3.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i793) #6
  %679 = getelementptr inbounds [2 x i8], ptr %buf.i.i793, i32 0, i32 1
  %680 = ptrtoint ptr %buf.i.i793 to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 96, ptr %buf.i.i793, align 1
  %681 = ptrtoint ptr %679 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 %conv4.i798, ptr %679, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i794) #6
  %682 = getelementptr inbounds i8, ptr %msg.i.i794, i32 4
  %683 = ptrtoint ptr %682 to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 196607, ptr %682, align 4
  %684 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %config, align 4
  %686 = ptrtoint ptr %685 to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %685, align 4
  %conv.i.i800 = zext i8 %687 to i16
  %688 = ptrtoint ptr %msg.i.i794 to i32
  call void @__asan_store2_noabort(i32 %688)
  store i16 %conv.i.i800, ptr %msg.i.i794, align 4
  %flags.i.i801 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i794, i32 0, i32 1
  %689 = ptrtoint ptr %flags.i.i801 to i32
  call void @__asan_store2_noabort(i32 %689)
  store i16 0, ptr %flags.i.i801, align 2
  %buf1.i.i802 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i794, i32 0, i32 3
  %690 = ptrtoint ptr %buf1.i.i802 to i32
  call void @__asan_store4_noabort(i32 %690)
  store ptr %buf.i.i793, ptr %buf1.i.i802, align 4
  %691 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %1, align 4
  %call.i.i803 = call i32 @i2c_transfer(ptr noundef %692, ptr noundef nonnull %msg.i.i794, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i803)
  %cmp.not.i.i804 = icmp eq i32 %call.i.i803, 1
  br i1 %cmp.not.i.i804, label %stv0297_set_symbolrate.exit.stv0297_writereg.exit.i813_crit_edge, label %do.end.i.i807

stv0297_set_symbolrate.exit.stv0297_writereg.exit.i813_crit_edge: ; preds = %stv0297_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit.i813

do.end.i.i807:                                    ; preds = %stv0297_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i805 = and i32 %div3.i, 255
  %call5.i.i806 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 96, i32 noundef %conv4.i.i805, i32 noundef %call.i.i803) #10
  br label %stv0297_writereg.exit.i813

stv0297_writereg.exit.i813:                       ; preds = %do.end.i.i807, %stv0297_set_symbolrate.exit.stv0297_writereg.exit.i813_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i794) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i793) #6
  %693 = lshr i32 %div3.i, 4
  %694 = trunc i32 %693 to i8
  %conv6.i = and i8 %694, -16
  %call.i17.i = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 105) #6
  %695 = trunc i32 %call.i17.i to i8
  %696 = and i8 %695, 15
  %conv4.i18.i = or i8 %696, %conv6.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i791) #6
  %697 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i791, i32 0, i32 1
  %698 = ptrtoint ptr %buf.i.i.i791 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 105, ptr %buf.i.i.i791, align 1
  %699 = ptrtoint ptr %697 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 %conv4.i18.i, ptr %697, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i792) #6
  %700 = getelementptr inbounds i8, ptr %msg.i.i.i792, i32 4
  %701 = ptrtoint ptr %700 to i32
  call void @__asan_store4_noabort(i32 %701)
  store i32 196607, ptr %700, align 4
  %702 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %config, align 4
  %704 = ptrtoint ptr %703 to i32
  call void @__asan_load1_noabort(i32 %704)
  %705 = load i8, ptr %703, align 4
  %conv.i.i.i808 = zext i8 %705 to i16
  %706 = ptrtoint ptr %msg.i.i.i792 to i32
  call void @__asan_store2_noabort(i32 %706)
  store i16 %conv.i.i.i808, ptr %msg.i.i.i792, align 4
  %flags.i.i.i809 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i792, i32 0, i32 1
  %707 = ptrtoint ptr %flags.i.i.i809 to i32
  call void @__asan_store2_noabort(i32 %707)
  store i16 0, ptr %flags.i.i.i809, align 2
  %buf1.i.i.i810 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i792, i32 0, i32 3
  %708 = ptrtoint ptr %buf1.i.i.i810 to i32
  call void @__asan_store4_noabort(i32 %708)
  store ptr %buf.i.i.i791, ptr %buf1.i.i.i810, align 4
  %709 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %1, align 4
  %call.i.i.i811 = call i32 @i2c_transfer(ptr noundef %710, ptr noundef nonnull %msg.i.i.i792, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i811)
  %cmp.not.i.i.i812 = icmp eq i32 %call.i.i.i811, 1
  br i1 %cmp.not.i.i.i812, label %stv0297_writereg.exit.i813.stv0297_set_sweeprate.exit_crit_edge, label %do.end.i.i.i816

stv0297_writereg.exit.i813.stv0297_set_sweeprate.exit_crit_edge: ; preds = %stv0297_writereg.exit.i813
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_set_sweeprate.exit

do.end.i.i.i816:                                  ; preds = %stv0297_writereg.exit.i813
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i.i814 = zext i8 %conv4.i18.i to i32
  %call5.i.i.i815 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 105, i32 noundef %conv4.i.i.i814, i32 noundef %call.i.i.i811) #10
  br label %stv0297_set_sweeprate.exit

stv0297_set_sweeprate.exit:                       ; preds = %do.end.i.i.i816, %stv0297_writereg.exit.i813.stv0297_set_sweeprate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i792) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i791) #6
  %add.i = add nsw i32 %carrieroffset.0, 268435456
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %carrieroffset.0
  %conv.i823 = trunc i32 %spec.select.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i820) #6
  %711 = getelementptr inbounds [2 x i8], ptr %buf.i.i820, i32 0, i32 1
  %712 = ptrtoint ptr %buf.i.i820 to i32
  call void @__asan_store1_noabort(i32 %712)
  store i8 102, ptr %buf.i.i820, align 1
  %713 = ptrtoint ptr %711 to i32
  call void @__asan_store1_noabort(i32 %713)
  store i8 %conv.i823, ptr %711, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i821) #6
  %714 = getelementptr inbounds i8, ptr %msg.i.i821, i32 4
  %715 = ptrtoint ptr %714 to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 196607, ptr %714, align 4
  %716 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %config, align 4
  %718 = ptrtoint ptr %717 to i32
  call void @__asan_load1_noabort(i32 %718)
  %719 = load i8, ptr %717, align 4
  %conv.i.i825 = zext i8 %719 to i16
  %720 = ptrtoint ptr %msg.i.i821 to i32
  call void @__asan_store2_noabort(i32 %720)
  store i16 %conv.i.i825, ptr %msg.i.i821, align 4
  %flags.i.i826 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i821, i32 0, i32 1
  %721 = ptrtoint ptr %flags.i.i826 to i32
  call void @__asan_store2_noabort(i32 %721)
  store i16 0, ptr %flags.i.i826, align 2
  %buf1.i.i827 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i821, i32 0, i32 3
  %722 = ptrtoint ptr %buf1.i.i827 to i32
  call void @__asan_store4_noabort(i32 %722)
  store ptr %buf.i.i820, ptr %buf1.i.i827, align 4
  %723 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %1, align 4
  %call.i.i828 = call i32 @i2c_transfer(ptr noundef %724, ptr noundef nonnull %msg.i.i821, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i828)
  %cmp.not.i.i829 = icmp eq i32 %call.i.i828, 1
  br i1 %cmp.not.i.i829, label %stv0297_set_sweeprate.exit.stv0297_writereg.exit.i834_crit_edge, label %do.end.i.i832

stv0297_set_sweeprate.exit.stv0297_writereg.exit.i834_crit_edge: ; preds = %stv0297_set_sweeprate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit.i834

do.end.i.i832:                                    ; preds = %stv0297_set_sweeprate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i830 = and i32 %spec.select.i, 248
  %call5.i.i831 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 102, i32 noundef %conv4.i.i830, i32 noundef %call.i.i828) #10
  br label %stv0297_writereg.exit.i834

stv0297_writereg.exit.i834:                       ; preds = %do.end.i.i832, %stv0297_set_sweeprate.exit.stv0297_writereg.exit.i834_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i821) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i820) #6
  %725 = lshr i32 %spec.select.i, 8
  %conv2.i833 = trunc i32 %725 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i20.i) #6
  %726 = getelementptr inbounds [2 x i8], ptr %buf.i20.i, i32 0, i32 1
  %727 = ptrtoint ptr %buf.i20.i to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 103, ptr %buf.i20.i, align 1
  %728 = ptrtoint ptr %726 to i32
  call void @__asan_store1_noabort(i32 %728)
  store i8 %conv2.i833, ptr %726, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21.i) #6
  %729 = getelementptr inbounds i8, ptr %msg.i21.i, i32 4
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 196607, ptr %729, align 4
  %731 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %config, align 4
  %733 = ptrtoint ptr %732 to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %732, align 4
  %conv.i23.i = zext i8 %734 to i16
  %735 = ptrtoint ptr %msg.i21.i to i32
  call void @__asan_store2_noabort(i32 %735)
  store i16 %conv.i23.i, ptr %msg.i21.i, align 4
  %flags.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 0, i32 1
  %736 = ptrtoint ptr %flags.i24.i to i32
  call void @__asan_store2_noabort(i32 %736)
  store i16 0, ptr %flags.i24.i, align 2
  %buf1.i26.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 0, i32 3
  %737 = ptrtoint ptr %buf1.i26.i to i32
  call void @__asan_store4_noabort(i32 %737)
  store ptr %buf.i20.i, ptr %buf1.i26.i, align 4
  %738 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %1, align 4
  %call.i27.i = call i32 @i2c_transfer(ptr noundef %739, ptr noundef nonnull %msg.i21.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i27.i)
  %cmp.not.i28.i = icmp eq i32 %call.i27.i, 1
  br i1 %cmp.not.i28.i, label %stv0297_writereg.exit.i834.stv0297_writereg.exit32.i_crit_edge, label %do.end.i31.i

stv0297_writereg.exit.i834.stv0297_writereg.exit32.i_crit_edge: ; preds = %stv0297_writereg.exit.i834
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit32.i

do.end.i31.i:                                     ; preds = %stv0297_writereg.exit.i834
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i29.i = and i32 %725, 255
  %call5.i30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 103, i32 noundef %conv4.i29.i, i32 noundef %call.i27.i) #10
  br label %stv0297_writereg.exit32.i

stv0297_writereg.exit32.i:                        ; preds = %do.end.i31.i, %stv0297_writereg.exit.i834.stv0297_writereg.exit32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i20.i) #6
  %740 = lshr i32 %spec.select.i, 16
  %conv5.i835 = trunc i32 %740 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i33.i) #6
  %741 = getelementptr inbounds [2 x i8], ptr %buf.i33.i, i32 0, i32 1
  %742 = ptrtoint ptr %buf.i33.i to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 104, ptr %buf.i33.i, align 1
  %743 = ptrtoint ptr %741 to i32
  call void @__asan_store1_noabort(i32 %743)
  store i8 %conv5.i835, ptr %741, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34.i) #6
  %744 = getelementptr inbounds i8, ptr %msg.i34.i, i32 4
  %745 = ptrtoint ptr %744 to i32
  call void @__asan_store4_noabort(i32 %745)
  store i32 196607, ptr %744, align 4
  %746 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %config, align 4
  %748 = ptrtoint ptr %747 to i32
  call void @__asan_load1_noabort(i32 %748)
  %749 = load i8, ptr %747, align 4
  %conv.i36.i = zext i8 %749 to i16
  %750 = ptrtoint ptr %msg.i34.i to i32
  call void @__asan_store2_noabort(i32 %750)
  store i16 %conv.i36.i, ptr %msg.i34.i, align 4
  %flags.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34.i, i32 0, i32 1
  %751 = ptrtoint ptr %flags.i37.i to i32
  call void @__asan_store2_noabort(i32 %751)
  store i16 0, ptr %flags.i37.i, align 2
  %buf1.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34.i, i32 0, i32 3
  %752 = ptrtoint ptr %buf1.i39.i to i32
  call void @__asan_store4_noabort(i32 %752)
  store ptr %buf.i33.i, ptr %buf1.i39.i, align 4
  %753 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %1, align 4
  %call.i40.i = call i32 @i2c_transfer(ptr noundef %754, ptr noundef nonnull %msg.i34.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40.i)
  %cmp.not.i41.i = icmp eq i32 %call.i40.i, 1
  br i1 %cmp.not.i41.i, label %stv0297_writereg.exit32.i.stv0297_writereg.exit45.i_crit_edge, label %do.end.i44.i

stv0297_writereg.exit32.i.stv0297_writereg.exit45.i_crit_edge: ; preds = %stv0297_writereg.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit45.i

do.end.i44.i:                                     ; preds = %stv0297_writereg.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i42.i = and i32 %740, 255
  %call5.i43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 104, i32 noundef %conv4.i42.i, i32 noundef %call.i40.i) #10
  br label %stv0297_writereg.exit45.i

stv0297_writereg.exit45.i:                        ; preds = %do.end.i44.i, %stv0297_writereg.exit32.i.stv0297_writereg.exit45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i33.i) #6
  %and.i836 = lshr i32 %spec.select.i, 24
  %755 = trunc i32 %and.i836 to i8
  %call.i46.i = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 105) #6
  %756 = trunc i32 %call.i46.i to i8
  %757 = and i8 %756, -16
  %conv4.i47.i = or i8 %757, %755
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i818) #6
  %758 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i818, i32 0, i32 1
  %759 = ptrtoint ptr %buf.i.i.i818 to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 105, ptr %buf.i.i.i818, align 1
  %760 = ptrtoint ptr %758 to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 %conv4.i47.i, ptr %758, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i819) #6
  %761 = getelementptr inbounds i8, ptr %msg.i.i.i819, i32 4
  %762 = ptrtoint ptr %761 to i32
  call void @__asan_store4_noabort(i32 %762)
  store i32 196607, ptr %761, align 4
  %763 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %config, align 4
  %765 = ptrtoint ptr %764 to i32
  call void @__asan_load1_noabort(i32 %765)
  %766 = load i8, ptr %764, align 4
  %conv.i.i.i837 = zext i8 %766 to i16
  %767 = ptrtoint ptr %msg.i.i.i819 to i32
  call void @__asan_store2_noabort(i32 %767)
  store i16 %conv.i.i.i837, ptr %msg.i.i.i819, align 4
  %flags.i.i.i838 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i819, i32 0, i32 1
  %768 = ptrtoint ptr %flags.i.i.i838 to i32
  call void @__asan_store2_noabort(i32 %768)
  store i16 0, ptr %flags.i.i.i838, align 2
  %buf1.i.i.i839 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i819, i32 0, i32 3
  %769 = ptrtoint ptr %buf1.i.i.i839 to i32
  call void @__asan_store4_noabort(i32 %769)
  store ptr %buf.i.i.i818, ptr %buf1.i.i.i839, align 4
  %770 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %1, align 4
  %call.i.i.i840 = call i32 @i2c_transfer(ptr noundef %771, ptr noundef nonnull %msg.i.i.i819, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i840)
  %cmp.not.i.i.i841 = icmp eq i32 %call.i.i.i840, 1
  br i1 %cmp.not.i.i.i841, label %stv0297_writereg.exit45.i.sw.epilog.i857_crit_edge, label %do.end.i.i.i844

stv0297_writereg.exit45.i.sw.epilog.i857_crit_edge: ; preds = %stv0297_writereg.exit45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i857

do.end.i.i.i844:                                  ; preds = %stv0297_writereg.exit45.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i.i842 = zext i8 %conv4.i47.i to i32
  %call5.i.i.i843 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 105, i32 noundef %conv4.i.i.i842, i32 noundef %call.i.i.i840) #10
  br label %sw.epilog.i857

sw.epilog.i857:                                   ; preds = %do.end.i.i.i844, %stv0297_writereg.exit45.i.sw.epilog.i857_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i819) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i818) #6
  %inversion.tr.i = trunc i32 %inversion.0 to i8
  %conv.i848 = shl nuw nsw i8 %inversion.tr.i, 3
  %call.i.i849 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -125) #6
  %and31.i.i = and i8 %conv.i848, 8
  %772 = trunc i32 %call.i.i849 to i8
  %773 = and i8 %772, -9
  %conv4.i.i850 = or i8 %773, %and31.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i846) #6
  %774 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i846, i32 0, i32 1
  %775 = ptrtoint ptr %buf.i.i.i846 to i32
  call void @__asan_store1_noabort(i32 %775)
  store i8 -125, ptr %buf.i.i.i846, align 1
  %776 = ptrtoint ptr %774 to i32
  call void @__asan_store1_noabort(i32 %776)
  store i8 %conv4.i.i850, ptr %774, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i847) #6
  %777 = getelementptr inbounds i8, ptr %msg.i.i.i847, i32 4
  %778 = ptrtoint ptr %777 to i32
  call void @__asan_store4_noabort(i32 %778)
  store i32 196607, ptr %777, align 4
  %779 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %config, align 4
  %781 = ptrtoint ptr %780 to i32
  call void @__asan_load1_noabort(i32 %781)
  %782 = load i8, ptr %780, align 4
  %conv.i.i.i852 = zext i8 %782 to i16
  %783 = ptrtoint ptr %msg.i.i.i847 to i32
  call void @__asan_store2_noabort(i32 %783)
  store i16 %conv.i.i.i852, ptr %msg.i.i.i847, align 4
  %flags.i.i.i853 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i847, i32 0, i32 1
  %784 = ptrtoint ptr %flags.i.i.i853 to i32
  call void @__asan_store2_noabort(i32 %784)
  store i16 0, ptr %flags.i.i.i853, align 2
  %buf1.i.i.i854 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i847, i32 0, i32 3
  %785 = ptrtoint ptr %buf1.i.i.i854 to i32
  call void @__asan_store4_noabort(i32 %785)
  store ptr %buf.i.i.i846, ptr %buf1.i.i.i854, align 4
  %786 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %1, align 4
  %call.i.i.i855 = call i32 @i2c_transfer(ptr noundef %787, ptr noundef nonnull %msg.i.i.i847, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i855)
  %cmp.not.i.i.i856 = icmp eq i32 %call.i.i.i855, 1
  br i1 %cmp.not.i.i.i856, label %sw.epilog.i857.stv0297_set_inversion.exit_crit_edge, label %do.end.i.i.i860

sw.epilog.i857.stv0297_set_inversion.exit_crit_edge: ; preds = %sw.epilog.i857
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_set_inversion.exit

do.end.i.i.i860:                                  ; preds = %sw.epilog.i857
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i.i858 = zext i8 %conv4.i.i850 to i32
  %call5.i.i.i859 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 131, i32 noundef %conv4.i.i.i858, i32 noundef %call.i.i.i855) #10
  br label %stv0297_set_inversion.exit

stv0297_set_inversion.exit:                       ; preds = %do.end.i.i.i860, %sw.epilog.i857.stv0297_set_inversion.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i847) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i846) #6
  %788 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load i32, ptr %modulation, align 4
  %790 = and i32 %789, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %790)
  %switch = icmp eq i32 %790, 4
  %call.i864 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -120) #6
  %791 = trunc i32 %call.i864 to i8
  br i1 %switch, label %if.then74, label %if.else

if.then74:                                        ; preds = %stv0297_set_inversion.exit
  %792 = and i8 %791, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i862) #6
  %793 = getelementptr inbounds [2 x i8], ptr %buf.i.i862, i32 0, i32 1
  %794 = ptrtoint ptr %buf.i.i862 to i32
  call void @__asan_store1_noabort(i32 %794)
  store i8 -120, ptr %buf.i.i862, align 1
  %795 = ptrtoint ptr %793 to i32
  call void @__asan_store1_noabort(i32 %795)
  store i8 %792, ptr %793, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i863) #6
  %796 = getelementptr inbounds i8, ptr %msg.i.i863, i32 4
  %797 = ptrtoint ptr %796 to i32
  call void @__asan_store4_noabort(i32 %797)
  store i32 196607, ptr %796, align 4
  %798 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %config, align 4
  %800 = ptrtoint ptr %799 to i32
  call void @__asan_load1_noabort(i32 %800)
  %801 = load i8, ptr %799, align 4
  %conv.i.i867 = zext i8 %801 to i16
  %802 = ptrtoint ptr %msg.i.i863 to i32
  call void @__asan_store2_noabort(i32 %802)
  store i16 %conv.i.i867, ptr %msg.i.i863, align 4
  %flags.i.i868 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i863, i32 0, i32 1
  %803 = ptrtoint ptr %flags.i.i868 to i32
  call void @__asan_store2_noabort(i32 %803)
  store i16 0, ptr %flags.i.i868, align 2
  %buf1.i.i869 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i863, i32 0, i32 3
  %804 = ptrtoint ptr %buf1.i.i869 to i32
  call void @__asan_store4_noabort(i32 %804)
  store ptr %buf.i.i862, ptr %buf1.i.i869, align 4
  %805 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %1, align 4
  %call.i.i870 = call i32 @i2c_transfer(ptr noundef %806, ptr noundef nonnull %msg.i.i863, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i870)
  %cmp.not.i.i871 = icmp eq i32 %call.i.i870, 1
  br i1 %cmp.not.i.i871, label %if.then74.stv0297_writereg_mask.exit876_crit_edge, label %do.end.i.i874

if.then74.stv0297_writereg_mask.exit876_crit_edge: ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit876

do.end.i.i874:                                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i872 = zext i8 %792 to i32
  %call5.i.i873 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 136, i32 noundef %conv4.i.i872, i32 noundef %call.i.i870) #10
  br label %stv0297_writereg_mask.exit876

stv0297_writereg_mask.exit876:                    ; preds = %do.end.i.i874, %if.then74.stv0297_writereg_mask.exit876_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i863) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i862) #6
  br label %if.end77

if.else:                                          ; preds = %stv0297_set_inversion.exit
  %conv4.i881 = or i8 %791, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i877) #6
  %807 = getelementptr inbounds [2 x i8], ptr %buf.i.i877, i32 0, i32 1
  %808 = ptrtoint ptr %buf.i.i877 to i32
  call void @__asan_store1_noabort(i32 %808)
  store i8 -120, ptr %buf.i.i877, align 1
  %809 = ptrtoint ptr %807 to i32
  call void @__asan_store1_noabort(i32 %809)
  store i8 %conv4.i881, ptr %807, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i878) #6
  %810 = getelementptr inbounds i8, ptr %msg.i.i878, i32 4
  %811 = ptrtoint ptr %810 to i32
  call void @__asan_store4_noabort(i32 %811)
  store i32 196607, ptr %810, align 4
  %812 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %config, align 4
  %814 = ptrtoint ptr %813 to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %813, align 4
  %conv.i.i883 = zext i8 %815 to i16
  %816 = ptrtoint ptr %msg.i.i878 to i32
  call void @__asan_store2_noabort(i32 %816)
  store i16 %conv.i.i883, ptr %msg.i.i878, align 4
  %flags.i.i884 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i878, i32 0, i32 1
  %817 = ptrtoint ptr %flags.i.i884 to i32
  call void @__asan_store2_noabort(i32 %817)
  store i16 0, ptr %flags.i.i884, align 2
  %buf1.i.i885 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i878, i32 0, i32 3
  %818 = ptrtoint ptr %buf1.i.i885 to i32
  call void @__asan_store4_noabort(i32 %818)
  store ptr %buf.i.i877, ptr %buf1.i.i885, align 4
  %819 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %1, align 4
  %call.i.i886 = call i32 @i2c_transfer(ptr noundef %820, ptr noundef nonnull %msg.i.i878, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i886)
  %cmp.not.i.i887 = icmp eq i32 %call.i.i886, 1
  br i1 %cmp.not.i.i887, label %if.else.stv0297_writereg_mask.exit892_crit_edge, label %do.end.i.i890

if.else.stv0297_writereg_mask.exit892_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit892

do.end.i.i890:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i888 = zext i8 %conv4.i881 to i32
  %call5.i.i889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 136, i32 noundef %conv4.i.i888, i32 noundef %call.i.i886) #10
  br label %stv0297_writereg_mask.exit892

stv0297_writereg_mask.exit892:                    ; preds = %do.end.i.i890, %if.else.stv0297_writereg_mask.exit892_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i878) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i877) #6
  br label %if.end77

if.end77:                                         ; preds = %stv0297_writereg_mask.exit892, %stv0297_writereg_mask.exit876
  %call.i895 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 90) #6
  %821 = trunc i32 %call.i895 to i8
  %822 = and i8 %821, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i893) #6
  %823 = getelementptr inbounds [2 x i8], ptr %buf.i.i893, i32 0, i32 1
  %824 = ptrtoint ptr %buf.i.i893 to i32
  call void @__asan_store1_noabort(i32 %824)
  store i8 90, ptr %buf.i.i893, align 1
  %825 = ptrtoint ptr %823 to i32
  call void @__asan_store1_noabort(i32 %825)
  store i8 %822, ptr %823, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i894) #6
  %826 = getelementptr inbounds i8, ptr %msg.i.i894, i32 4
  %827 = ptrtoint ptr %826 to i32
  call void @__asan_store4_noabort(i32 %827)
  store i32 196607, ptr %826, align 4
  %828 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %config, align 4
  %830 = ptrtoint ptr %829 to i32
  call void @__asan_load1_noabort(i32 %830)
  %831 = load i8, ptr %829, align 4
  %conv.i.i898 = zext i8 %831 to i16
  %832 = ptrtoint ptr %msg.i.i894 to i32
  call void @__asan_store2_noabort(i32 %832)
  store i16 %conv.i.i898, ptr %msg.i.i894, align 4
  %flags.i.i899 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i894, i32 0, i32 1
  %833 = ptrtoint ptr %flags.i.i899 to i32
  call void @__asan_store2_noabort(i32 %833)
  store i16 0, ptr %flags.i.i899, align 2
  %buf1.i.i900 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i894, i32 0, i32 3
  %834 = ptrtoint ptr %buf1.i.i900 to i32
  call void @__asan_store4_noabort(i32 %834)
  store ptr %buf.i.i893, ptr %buf1.i.i900, align 4
  %835 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %1, align 4
  %call.i.i901 = call i32 @i2c_transfer(ptr noundef %836, ptr noundef nonnull %msg.i.i894, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i901)
  %cmp.not.i.i902 = icmp eq i32 %call.i.i901, 1
  br i1 %cmp.not.i.i902, label %if.end77.stv0297_writereg_mask.exit907_crit_edge, label %do.end.i.i905

if.end77.stv0297_writereg_mask.exit907_crit_edge: ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit907

do.end.i.i905:                                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i903 = zext i8 %822 to i32
  %call5.i.i904 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 90, i32 noundef %conv4.i.i903, i32 noundef %call.i.i901) #10
  br label %stv0297_writereg_mask.exit907

stv0297_writereg_mask.exit907:                    ; preds = %do.end.i.i905, %if.end77.stv0297_writereg_mask.exit907_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i894) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i893) #6
  %call.i910 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 106) #6
  %837 = trunc i32 %call.i910 to i8
  %conv4.i912 = or i8 %837, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i908) #6
  %838 = getelementptr inbounds [2 x i8], ptr %buf.i.i908, i32 0, i32 1
  %839 = ptrtoint ptr %buf.i.i908 to i32
  call void @__asan_store1_noabort(i32 %839)
  store i8 106, ptr %buf.i.i908, align 1
  %840 = ptrtoint ptr %838 to i32
  call void @__asan_store1_noabort(i32 %840)
  store i8 %conv4.i912, ptr %838, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i909) #6
  %841 = getelementptr inbounds i8, ptr %msg.i.i909, i32 4
  %842 = ptrtoint ptr %841 to i32
  call void @__asan_store4_noabort(i32 %842)
  store i32 196607, ptr %841, align 4
  %843 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %config, align 4
  %845 = ptrtoint ptr %844 to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %844, align 4
  %conv.i.i914 = zext i8 %846 to i16
  %847 = ptrtoint ptr %msg.i.i909 to i32
  call void @__asan_store2_noabort(i32 %847)
  store i16 %conv.i.i914, ptr %msg.i.i909, align 4
  %flags.i.i915 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i909, i32 0, i32 1
  %848 = ptrtoint ptr %flags.i.i915 to i32
  call void @__asan_store2_noabort(i32 %848)
  store i16 0, ptr %flags.i.i915, align 2
  %buf1.i.i916 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i909, i32 0, i32 3
  %849 = ptrtoint ptr %buf1.i.i916 to i32
  call void @__asan_store4_noabort(i32 %849)
  store ptr %buf.i.i908, ptr %buf1.i.i916, align 4
  %850 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %1, align 4
  %call.i.i917 = call i32 @i2c_transfer(ptr noundef %851, ptr noundef nonnull %msg.i.i909, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i917)
  %cmp.not.i.i918 = icmp eq i32 %call.i.i917, 1
  br i1 %cmp.not.i.i918, label %stv0297_writereg_mask.exit907.stv0297_writereg_mask.exit923_crit_edge, label %do.end.i.i921

stv0297_writereg_mask.exit907.stv0297_writereg_mask.exit923_crit_edge: ; preds = %stv0297_writereg_mask.exit907
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit923

do.end.i.i921:                                    ; preds = %stv0297_writereg_mask.exit907
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i919 = zext i8 %conv4.i912 to i32
  %call5.i.i920 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 106, i32 noundef %conv4.i.i919, i32 noundef %call.i.i917) #10
  br label %stv0297_writereg_mask.exit923

stv0297_writereg_mask.exit923:                    ; preds = %do.end.i.i921, %stv0297_writereg_mask.exit907.stv0297_writereg_mask.exit923_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i909) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i908) #6
  %call.i926 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 67) #6
  %852 = trunc i32 %call.i926 to i8
  %conv4.i928 = or i8 %852, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i924) #6
  %853 = getelementptr inbounds [2 x i8], ptr %buf.i.i924, i32 0, i32 1
  %854 = ptrtoint ptr %buf.i.i924 to i32
  call void @__asan_store1_noabort(i32 %854)
  store i8 67, ptr %buf.i.i924, align 1
  %855 = ptrtoint ptr %853 to i32
  call void @__asan_store1_noabort(i32 %855)
  store i8 %conv4.i928, ptr %853, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i925) #6
  %856 = getelementptr inbounds i8, ptr %msg.i.i925, i32 4
  %857 = ptrtoint ptr %856 to i32
  call void @__asan_store4_noabort(i32 %857)
  store i32 196607, ptr %856, align 4
  %858 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %config, align 4
  %860 = ptrtoint ptr %859 to i32
  call void @__asan_load1_noabort(i32 %860)
  %861 = load i8, ptr %859, align 4
  %conv.i.i930 = zext i8 %861 to i16
  %862 = ptrtoint ptr %msg.i.i925 to i32
  call void @__asan_store2_noabort(i32 %862)
  store i16 %conv.i.i930, ptr %msg.i.i925, align 4
  %flags.i.i931 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i925, i32 0, i32 1
  %863 = ptrtoint ptr %flags.i.i931 to i32
  call void @__asan_store2_noabort(i32 %863)
  store i16 0, ptr %flags.i.i931, align 2
  %buf1.i.i932 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i925, i32 0, i32 3
  %864 = ptrtoint ptr %buf1.i.i932 to i32
  call void @__asan_store4_noabort(i32 %864)
  store ptr %buf.i.i924, ptr %buf1.i.i932, align 4
  %865 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %1, align 4
  %call.i.i933 = call i32 @i2c_transfer(ptr noundef %866, ptr noundef nonnull %msg.i.i925, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i933)
  %cmp.not.i.i934 = icmp eq i32 %call.i.i933, 1
  br i1 %cmp.not.i.i934, label %stv0297_writereg_mask.exit923.stv0297_writereg_mask.exit939_crit_edge, label %do.end.i.i937

stv0297_writereg_mask.exit923.stv0297_writereg_mask.exit939_crit_edge: ; preds = %stv0297_writereg_mask.exit923
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit939

do.end.i.i937:                                    ; preds = %stv0297_writereg_mask.exit923
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i935 = zext i8 %conv4.i928 to i32
  %call5.i.i936 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 67, i32 noundef %conv4.i.i935, i32 noundef %call.i.i933) #10
  br label %stv0297_writereg_mask.exit939

stv0297_writereg_mask.exit939:                    ; preds = %do.end.i.i937, %stv0297_writereg_mask.exit923.stv0297_writereg_mask.exit939_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i925) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i924) #6
  %call.i942 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 91) #6
  %867 = trunc i32 %call.i942 to i8
  %868 = and i8 %867, -49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i940) #6
  %869 = getelementptr inbounds [2 x i8], ptr %buf.i.i940, i32 0, i32 1
  %870 = ptrtoint ptr %buf.i.i940 to i32
  call void @__asan_store1_noabort(i32 %870)
  store i8 91, ptr %buf.i.i940, align 1
  %871 = ptrtoint ptr %869 to i32
  call void @__asan_store1_noabort(i32 %871)
  store i8 %868, ptr %869, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i941) #6
  %872 = getelementptr inbounds i8, ptr %msg.i.i941, i32 4
  %873 = ptrtoint ptr %872 to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 196607, ptr %872, align 4
  %874 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %config, align 4
  %876 = ptrtoint ptr %875 to i32
  call void @__asan_load1_noabort(i32 %876)
  %877 = load i8, ptr %875, align 4
  %conv.i.i945 = zext i8 %877 to i16
  %878 = ptrtoint ptr %msg.i.i941 to i32
  call void @__asan_store2_noabort(i32 %878)
  store i16 %conv.i.i945, ptr %msg.i.i941, align 4
  %flags.i.i946 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i941, i32 0, i32 1
  %879 = ptrtoint ptr %flags.i.i946 to i32
  call void @__asan_store2_noabort(i32 %879)
  store i16 0, ptr %flags.i.i946, align 2
  %buf1.i.i947 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i941, i32 0, i32 3
  %880 = ptrtoint ptr %buf1.i.i947 to i32
  call void @__asan_store4_noabort(i32 %880)
  store ptr %buf.i.i940, ptr %buf1.i.i947, align 4
  %881 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %1, align 4
  %call.i.i948 = call i32 @i2c_transfer(ptr noundef %882, ptr noundef nonnull %msg.i.i941, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i948)
  %cmp.not.i.i949 = icmp eq i32 %call.i.i948, 1
  br i1 %cmp.not.i.i949, label %stv0297_writereg_mask.exit939.stv0297_writereg_mask.exit954_crit_edge, label %do.end.i.i952

stv0297_writereg_mask.exit939.stv0297_writereg_mask.exit954_crit_edge: ; preds = %stv0297_writereg_mask.exit939
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit954

do.end.i.i952:                                    ; preds = %stv0297_writereg_mask.exit939
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i950 = zext i8 %868 to i32
  %call5.i.i951 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 91, i32 noundef %conv4.i.i950, i32 noundef %call.i.i948) #10
  br label %stv0297_writereg_mask.exit954

stv0297_writereg_mask.exit954:                    ; preds = %do.end.i.i952, %stv0297_writereg_mask.exit939.stv0297_writereg_mask.exit954_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i941) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i940) #6
  %call.i957 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 3) #6
  %883 = trunc i32 %call.i957 to i8
  %conv4.i959 = or i8 %883, 12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i955) #6
  %884 = getelementptr inbounds [2 x i8], ptr %buf.i.i955, i32 0, i32 1
  %885 = ptrtoint ptr %buf.i.i955 to i32
  call void @__asan_store1_noabort(i32 %885)
  store i8 3, ptr %buf.i.i955, align 1
  %886 = ptrtoint ptr %884 to i32
  call void @__asan_store1_noabort(i32 %886)
  store i8 %conv4.i959, ptr %884, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i956) #6
  %887 = getelementptr inbounds i8, ptr %msg.i.i956, i32 4
  %888 = ptrtoint ptr %887 to i32
  call void @__asan_store4_noabort(i32 %888)
  store i32 196607, ptr %887, align 4
  %889 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %config, align 4
  %891 = ptrtoint ptr %890 to i32
  call void @__asan_load1_noabort(i32 %891)
  %892 = load i8, ptr %890, align 4
  %conv.i.i961 = zext i8 %892 to i16
  %893 = ptrtoint ptr %msg.i.i956 to i32
  call void @__asan_store2_noabort(i32 %893)
  store i16 %conv.i.i961, ptr %msg.i.i956, align 4
  %flags.i.i962 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i956, i32 0, i32 1
  %894 = ptrtoint ptr %flags.i.i962 to i32
  call void @__asan_store2_noabort(i32 %894)
  store i16 0, ptr %flags.i.i962, align 2
  %buf1.i.i963 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i956, i32 0, i32 3
  %895 = ptrtoint ptr %buf1.i.i963 to i32
  call void @__asan_store4_noabort(i32 %895)
  store ptr %buf.i.i955, ptr %buf1.i.i963, align 4
  %896 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %1, align 4
  %call.i.i964 = call i32 @i2c_transfer(ptr noundef %897, ptr noundef nonnull %msg.i.i956, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i964)
  %cmp.not.i.i965 = icmp eq i32 %call.i.i964, 1
  br i1 %cmp.not.i.i965, label %stv0297_writereg_mask.exit954.stv0297_writereg_mask.exit970_crit_edge, label %do.end.i.i968

stv0297_writereg_mask.exit954.stv0297_writereg_mask.exit970_crit_edge: ; preds = %stv0297_writereg_mask.exit954
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit970

do.end.i.i968:                                    ; preds = %stv0297_writereg_mask.exit954
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i966 = zext i8 %conv4.i959 to i32
  %call5.i.i967 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef %conv4.i.i966, i32 noundef %call.i.i964) #10
  br label %stv0297_writereg_mask.exit970

stv0297_writereg_mask.exit970:                    ; preds = %do.end.i.i968, %stv0297_writereg_mask.exit954.stv0297_writereg_mask.exit970_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i956) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i955) #6
  %call.i973 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 3) #6
  %898 = trunc i32 %call.i973 to i8
  %conv4.i975 = or i8 %898, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i971) #6
  %899 = getelementptr inbounds [2 x i8], ptr %buf.i.i971, i32 0, i32 1
  %900 = ptrtoint ptr %buf.i.i971 to i32
  call void @__asan_store1_noabort(i32 %900)
  store i8 3, ptr %buf.i.i971, align 1
  %901 = ptrtoint ptr %899 to i32
  call void @__asan_store1_noabort(i32 %901)
  store i8 %conv4.i975, ptr %899, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i972) #6
  %902 = getelementptr inbounds i8, ptr %msg.i.i972, i32 4
  %903 = ptrtoint ptr %902 to i32
  call void @__asan_store4_noabort(i32 %903)
  store i32 196607, ptr %902, align 4
  %904 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %config, align 4
  %906 = ptrtoint ptr %905 to i32
  call void @__asan_load1_noabort(i32 %906)
  %907 = load i8, ptr %905, align 4
  %conv.i.i977 = zext i8 %907 to i16
  %908 = ptrtoint ptr %msg.i.i972 to i32
  call void @__asan_store2_noabort(i32 %908)
  store i16 %conv.i.i977, ptr %msg.i.i972, align 4
  %flags.i.i978 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i972, i32 0, i32 1
  %909 = ptrtoint ptr %flags.i.i978 to i32
  call void @__asan_store2_noabort(i32 %909)
  store i16 0, ptr %flags.i.i978, align 2
  %buf1.i.i979 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i972, i32 0, i32 3
  %910 = ptrtoint ptr %buf1.i.i979 to i32
  call void @__asan_store4_noabort(i32 %910)
  store ptr %buf.i.i971, ptr %buf1.i.i979, align 4
  %911 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %1, align 4
  %call.i.i980 = call i32 @i2c_transfer(ptr noundef %912, ptr noundef nonnull %msg.i.i972, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i980)
  %cmp.not.i.i981 = icmp eq i32 %call.i.i980, 1
  br i1 %cmp.not.i.i981, label %stv0297_writereg_mask.exit970.stv0297_writereg_mask.exit986_crit_edge, label %do.end.i.i984

stv0297_writereg_mask.exit970.stv0297_writereg_mask.exit986_crit_edge: ; preds = %stv0297_writereg_mask.exit970
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit986

do.end.i.i984:                                    ; preds = %stv0297_writereg_mask.exit970
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i982 = zext i8 %conv4.i975 to i32
  %call5.i.i983 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef %conv4.i.i982, i32 noundef %call.i.i980) #10
  br label %stv0297_writereg_mask.exit986

stv0297_writereg_mask.exit986:                    ; preds = %do.end.i.i984, %stv0297_writereg_mask.exit970.stv0297_writereg_mask.exit986_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i972) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i971) #6
  %call.i989 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 67) #6
  %913 = trunc i32 %call.i989 to i8
  %conv4.i991 = or i8 %913, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i987) #6
  %914 = getelementptr inbounds [2 x i8], ptr %buf.i.i987, i32 0, i32 1
  %915 = ptrtoint ptr %buf.i.i987 to i32
  call void @__asan_store1_noabort(i32 %915)
  store i8 67, ptr %buf.i.i987, align 1
  %916 = ptrtoint ptr %914 to i32
  call void @__asan_store1_noabort(i32 %916)
  store i8 %conv4.i991, ptr %914, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i988) #6
  %917 = getelementptr inbounds i8, ptr %msg.i.i988, i32 4
  %918 = ptrtoint ptr %917 to i32
  call void @__asan_store4_noabort(i32 %918)
  store i32 196607, ptr %917, align 4
  %919 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %config, align 4
  %921 = ptrtoint ptr %920 to i32
  call void @__asan_load1_noabort(i32 %921)
  %922 = load i8, ptr %920, align 4
  %conv.i.i993 = zext i8 %922 to i16
  %923 = ptrtoint ptr %msg.i.i988 to i32
  call void @__asan_store2_noabort(i32 %923)
  store i16 %conv.i.i993, ptr %msg.i.i988, align 4
  %flags.i.i994 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i988, i32 0, i32 1
  %924 = ptrtoint ptr %flags.i.i994 to i32
  call void @__asan_store2_noabort(i32 %924)
  store i16 0, ptr %flags.i.i994, align 2
  %buf1.i.i995 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i988, i32 0, i32 3
  %925 = ptrtoint ptr %buf1.i.i995 to i32
  call void @__asan_store4_noabort(i32 %925)
  store ptr %buf.i.i987, ptr %buf1.i.i995, align 4
  %926 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %1, align 4
  %call.i.i996 = call i32 @i2c_transfer(ptr noundef %927, ptr noundef nonnull %msg.i.i988, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i996)
  %cmp.not.i.i997 = icmp eq i32 %call.i.i996, 1
  br i1 %cmp.not.i.i997, label %stv0297_writereg_mask.exit986.stv0297_writereg_mask.exit1002_crit_edge, label %do.end.i.i1000

stv0297_writereg_mask.exit986.stv0297_writereg_mask.exit1002_crit_edge: ; preds = %stv0297_writereg_mask.exit986
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit1002

do.end.i.i1000:                                   ; preds = %stv0297_writereg_mask.exit986
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i998 = zext i8 %conv4.i991 to i32
  %call5.i.i999 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 67, i32 noundef %conv4.i.i998, i32 noundef %call.i.i996) #10
  br label %stv0297_writereg_mask.exit1002

stv0297_writereg_mask.exit1002:                   ; preds = %do.end.i.i1000, %stv0297_writereg_mask.exit986.stv0297_writereg_mask.exit1002_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i988) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i987) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %928 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %928, 200
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %stv0297_writereg_mask.exit1002
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %929 = load volatile i32, ptr @jiffies, align 128
  %sub86 = sub i32 %929, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub86)
  %cmp87 = icmp slt i32 %sub86, 0
  br i1 %cmp87, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 10) #6
  %call89 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 67)
  %and90 = and i32 %call89, 8
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %930 = load volatile i32, ptr @jiffies, align 128
  %sub94 = sub i32 %add, %930
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub94)
  %cmp95 = icmp slt i32 %sub94, 0
  br i1 %cmp95, label %while.end.timeout161_crit_edge, label %if.end98

while.end.timeout161_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %timeout161

if.end98:                                         ; preds = %while.end
  call void @msleep(i32 noundef 20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %931 = load volatile i32, ptr @jiffies, align 128
  %add100 = add i32 %931, 50
  br label %while.cond101

while.cond101:                                    ; preds = %while.body105.while.cond101_crit_edge, %if.end98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %932 = load volatile i32, ptr @jiffies, align 128
  %sub102 = sub i32 %932, %add100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub102)
  %cmp103 = icmp slt i32 %sub102, 0
  br i1 %cmp103, label %while.body105, label %while.cond101.while.end111_crit_edge

while.cond101.while.end111_crit_edge:             ; preds = %while.cond101
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end111

while.body105:                                    ; preds = %while.cond101
  call void @msleep(i32 noundef 10) #6
  %call106 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -126)
  %and107 = and i32 %call106, 4
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %while.body105.while.cond101_crit_edge, label %while.body105.while.end111_crit_edge

while.body105.while.end111_crit_edge:             ; preds = %while.body105
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end111

while.body105.while.cond101_crit_edge:            ; preds = %while.body105
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond101

while.end111:                                     ; preds = %while.body105.while.end111_crit_edge, %while.cond101.while.end111_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %933 = load volatile i32, ptr @jiffies, align 128
  %sub112 = sub i32 %add100, %933
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub112)
  %cmp113 = icmp slt i32 %sub112, 0
  br i1 %cmp113, label %while.end111.timeout161_crit_edge, label %if.end116

while.end111.timeout161_crit_edge:                ; preds = %while.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %timeout161

if.end116:                                        ; preds = %while.end111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %934 = load volatile i32, ptr @jiffies, align 128
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %switch.load) #6
  %add118 = add i32 %call2.i, %934
  br label %while.cond119

while.cond119:                                    ; preds = %while.body123.while.cond119_crit_edge, %if.end116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %935 = load volatile i32, ptr @jiffies, align 128
  %sub120 = sub i32 %935, %add118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub120)
  %cmp121 = icmp slt i32 %sub120, 0
  br i1 %cmp121, label %while.body123, label %while.cond119.while.end129_crit_edge

while.cond119.while.end129_crit_edge:             ; preds = %while.cond119
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end129

while.body123:                                    ; preds = %while.cond119
  call void @msleep(i32 noundef 10) #6
  %call124 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -126)
  %and125 = and i32 %call124, 8
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %while.body123.while.cond119_crit_edge, label %while.body123.while.end129_crit_edge

while.body123.while.end129_crit_edge:             ; preds = %while.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end129

while.body123.while.cond119_crit_edge:            ; preds = %while.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond119

while.end129:                                     ; preds = %while.body123.while.end129_crit_edge, %while.cond119.while.end129_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %936 = load volatile i32, ptr @jiffies, align 128
  %sub130 = sub i32 %add118, %936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub130)
  %cmp131 = icmp slt i32 %sub130, 0
  br i1 %cmp131, label %while.end129.timeout161_crit_edge, label %if.end134

while.end129.timeout161_crit_edge:                ; preds = %while.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %timeout161

if.end134:                                        ; preds = %while.end129
  %call.i1005 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 106) #6
  %937 = trunc i32 %call.i1005 to i8
  %938 = and i8 %937, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i1003) #6
  %939 = getelementptr inbounds [2 x i8], ptr %buf.i.i1003, i32 0, i32 1
  %940 = ptrtoint ptr %buf.i.i1003 to i32
  call void @__asan_store1_noabort(i32 %940)
  store i8 106, ptr %buf.i.i1003, align 1
  %941 = ptrtoint ptr %939 to i32
  call void @__asan_store1_noabort(i32 %941)
  store i8 %938, ptr %939, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1004) #6
  %942 = getelementptr inbounds i8, ptr %msg.i.i1004, i32 4
  %943 = ptrtoint ptr %942 to i32
  call void @__asan_store4_noabort(i32 %943)
  store i32 196607, ptr %942, align 4
  %944 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load ptr, ptr %config, align 4
  %946 = ptrtoint ptr %945 to i32
  call void @__asan_load1_noabort(i32 %946)
  %947 = load i8, ptr %945, align 4
  %conv.i.i1008 = zext i8 %947 to i16
  %948 = ptrtoint ptr %msg.i.i1004 to i32
  call void @__asan_store2_noabort(i32 %948)
  store i16 %conv.i.i1008, ptr %msg.i.i1004, align 4
  %flags.i.i1009 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1004, i32 0, i32 1
  %949 = ptrtoint ptr %flags.i.i1009 to i32
  call void @__asan_store2_noabort(i32 %949)
  store i16 0, ptr %flags.i.i1009, align 2
  %buf1.i.i1010 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1004, i32 0, i32 3
  %950 = ptrtoint ptr %buf1.i.i1010 to i32
  call void @__asan_store4_noabort(i32 %950)
  store ptr %buf.i.i1003, ptr %buf1.i.i1010, align 4
  %951 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %1, align 4
  %call.i.i1011 = call i32 @i2c_transfer(ptr noundef %952, ptr noundef nonnull %msg.i.i1004, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i1011)
  %cmp.not.i.i1012 = icmp eq i32 %call.i.i1011, 1
  br i1 %cmp.not.i.i1012, label %if.end134.stv0297_writereg_mask.exit1017_crit_edge, label %do.end.i.i1015

if.end134.stv0297_writereg_mask.exit1017_crit_edge: ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit1017

do.end.i.i1015:                                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i1013 = zext i8 %938 to i32
  %call5.i.i1014 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 106, i32 noundef %conv4.i.i1013, i32 noundef %call.i.i1011) #10
  br label %stv0297_writereg_mask.exit1017

stv0297_writereg_mask.exit1017:                   ; preds = %do.end.i.i1015, %if.end134.stv0297_writereg_mask.exit1017_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1004) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i1003) #6
  %call.i1020 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -120) #6
  %953 = trunc i32 %call.i1020 to i8
  %954 = and i8 %953, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i1018) #6
  %955 = getelementptr inbounds [2 x i8], ptr %buf.i.i1018, i32 0, i32 1
  %956 = ptrtoint ptr %buf.i.i1018 to i32
  call void @__asan_store1_noabort(i32 %956)
  store i8 -120, ptr %buf.i.i1018, align 1
  %957 = ptrtoint ptr %955 to i32
  call void @__asan_store1_noabort(i32 %957)
  store i8 %954, ptr %955, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1019) #6
  %958 = getelementptr inbounds i8, ptr %msg.i.i1019, i32 4
  %959 = ptrtoint ptr %958 to i32
  call void @__asan_store4_noabort(i32 %959)
  store i32 196607, ptr %958, align 4
  %960 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %config, align 4
  %962 = ptrtoint ptr %961 to i32
  call void @__asan_load1_noabort(i32 %962)
  %963 = load i8, ptr %961, align 4
  %conv.i.i1023 = zext i8 %963 to i16
  %964 = ptrtoint ptr %msg.i.i1019 to i32
  call void @__asan_store2_noabort(i32 %964)
  store i16 %conv.i.i1023, ptr %msg.i.i1019, align 4
  %flags.i.i1024 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1019, i32 0, i32 1
  %965 = ptrtoint ptr %flags.i.i1024 to i32
  call void @__asan_store2_noabort(i32 %965)
  store i16 0, ptr %flags.i.i1024, align 2
  %buf1.i.i1025 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1019, i32 0, i32 3
  %966 = ptrtoint ptr %buf1.i.i1025 to i32
  call void @__asan_store4_noabort(i32 %966)
  store ptr %buf.i.i1018, ptr %buf1.i.i1025, align 4
  %967 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %1, align 4
  %call.i.i1026 = call i32 @i2c_transfer(ptr noundef %968, ptr noundef nonnull %msg.i.i1019, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i1026)
  %cmp.not.i.i1027 = icmp eq i32 %call.i.i1026, 1
  br i1 %cmp.not.i.i1027, label %stv0297_writereg_mask.exit1017.stv0297_writereg_mask.exit1032_crit_edge, label %do.end.i.i1030

stv0297_writereg_mask.exit1017.stv0297_writereg_mask.exit1032_crit_edge: ; preds = %stv0297_writereg_mask.exit1017
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit1032

do.end.i.i1030:                                   ; preds = %stv0297_writereg_mask.exit1017
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i1028 = zext i8 %954 to i32
  %call5.i.i1029 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 136, i32 noundef %conv4.i.i1028, i32 noundef %call.i.i1026) #10
  br label %stv0297_writereg_mask.exit1032

stv0297_writereg_mask.exit1032:                   ; preds = %do.end.i.i1030, %stv0297_writereg_mask.exit1017.stv0297_writereg_mask.exit1032_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1019) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i1018) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %969 = load volatile i32, ptr @jiffies, align 128
  %add138 = add i32 %969, 2
  br label %while.cond139

while.cond139:                                    ; preds = %while.body143.while.cond139_crit_edge, %stv0297_writereg_mask.exit1032
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %970 = load volatile i32, ptr @jiffies, align 128
  %sub140 = sub i32 %970, %add138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub140)
  %cmp141 = icmp slt i32 %sub140, 0
  br i1 %cmp141, label %while.body143, label %while.cond139.while.end149_crit_edge

while.cond139.while.end149_crit_edge:             ; preds = %while.cond139
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end149

while.body143:                                    ; preds = %while.cond139
  call void @msleep(i32 noundef 10) #6
  %call144 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -33)
  %and145 = and i32 %call144, 128
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %while.body143.while.cond139_crit_edge, label %while.body143.while.end149_crit_edge

while.body143.while.end149_crit_edge:             ; preds = %while.body143
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end149

while.body143.while.cond139_crit_edge:            ; preds = %while.body143
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond139

while.end149:                                     ; preds = %while.body143.while.end149_crit_edge, %while.cond139.while.end149_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %971 = load volatile i32, ptr @jiffies, align 128
  %sub150 = sub i32 %add138, %971
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub150)
  %cmp151 = icmp slt i32 %sub150, 0
  br i1 %cmp151, label %while.end149.timeout161_crit_edge, label %if.end154

while.end149.timeout161_crit_edge:                ; preds = %while.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %timeout161

if.end154:                                        ; preds = %while.end149
  call void @msleep(i32 noundef 100) #6
  %call155 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -33)
  %and156 = and i32 %call155, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end154.timeout161_crit_edge, label %if.end159

if.end154.timeout161_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %timeout161

if.end159:                                        ; preds = %if.end154
  %call.i1035 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 90) #6
  %972 = trunc i32 %call.i1035 to i8
  %973 = and i8 %972, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i1033) #6
  %974 = getelementptr inbounds [2 x i8], ptr %buf.i.i1033, i32 0, i32 1
  %975 = ptrtoint ptr %buf.i.i1033 to i32
  call void @__asan_store1_noabort(i32 %975)
  store i8 90, ptr %buf.i.i1033, align 1
  %976 = ptrtoint ptr %974 to i32
  call void @__asan_store1_noabort(i32 %976)
  store i8 %973, ptr %974, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1034) #6
  %977 = getelementptr inbounds i8, ptr %msg.i.i1034, i32 4
  %978 = ptrtoint ptr %977 to i32
  call void @__asan_store4_noabort(i32 %978)
  store i32 196607, ptr %977, align 4
  %979 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %config, align 4
  %981 = ptrtoint ptr %980 to i32
  call void @__asan_load1_noabort(i32 %981)
  %982 = load i8, ptr %980, align 4
  %conv.i.i1038 = zext i8 %982 to i16
  %983 = ptrtoint ptr %msg.i.i1034 to i32
  call void @__asan_store2_noabort(i32 %983)
  store i16 %conv.i.i1038, ptr %msg.i.i1034, align 4
  %flags.i.i1039 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1034, i32 0, i32 1
  %984 = ptrtoint ptr %flags.i.i1039 to i32
  call void @__asan_store2_noabort(i32 %984)
  store i16 0, ptr %flags.i.i1039, align 2
  %buf1.i.i1040 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1034, i32 0, i32 3
  %985 = ptrtoint ptr %buf1.i.i1040 to i32
  call void @__asan_store4_noabort(i32 %985)
  store ptr %buf.i.i1033, ptr %buf1.i.i1040, align 4
  %986 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %1, align 4
  %call.i.i1041 = call i32 @i2c_transfer(ptr noundef %987, ptr noundef nonnull %msg.i.i1034, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i1041)
  %cmp.not.i.i1042 = icmp eq i32 %call.i.i1041, 1
  br i1 %cmp.not.i.i1042, label %if.end159.stv0297_writereg_mask.exit1047_crit_edge, label %do.end.i.i1045

if.end159.stv0297_writereg_mask.exit1047_crit_edge: ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit1047

do.end.i.i1045:                                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i1043 = zext i8 %973 to i32
  %call5.i.i1044 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 90, i32 noundef %conv4.i.i1043, i32 noundef %call.i.i1041) #10
  br label %stv0297_writereg_mask.exit1047

stv0297_writereg_mask.exit1047:                   ; preds = %do.end.i.i1045, %if.end159.stv0297_writereg_mask.exit1047_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1034) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i1033) #6
  %988 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load i32, ptr %dtv_property_cache, align 4
  %base_freq = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 4
  %990 = ptrtoint ptr %base_freq to i32
  call void @__asan_store4_noabort(i32 %990)
  store i32 %989, ptr %base_freq, align 4
  br label %cleanup

timeout161:                                       ; preds = %if.end154.timeout161_crit_edge, %while.end149.timeout161_crit_edge, %while.end129.timeout161_crit_edge, %while.end111.timeout161_crit_edge, %while.end.timeout161_crit_edge
  %call.i1050 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 106) #6
  %991 = trunc i32 %call.i1050 to i8
  %992 = and i8 %991, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i1048) #6
  %993 = getelementptr inbounds [2 x i8], ptr %buf.i.i1048, i32 0, i32 1
  %994 = ptrtoint ptr %buf.i.i1048 to i32
  call void @__asan_store1_noabort(i32 %994)
  store i8 106, ptr %buf.i.i1048, align 1
  %995 = ptrtoint ptr %993 to i32
  call void @__asan_store1_noabort(i32 %995)
  store i8 %992, ptr %993, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1049) #6
  %996 = getelementptr inbounds i8, ptr %msg.i.i1049, i32 4
  %997 = ptrtoint ptr %996 to i32
  call void @__asan_store4_noabort(i32 %997)
  store i32 196607, ptr %996, align 4
  %998 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %998)
  %999 = load ptr, ptr %config, align 4
  %1000 = ptrtoint ptr %999 to i32
  call void @__asan_load1_noabort(i32 %1000)
  %1001 = load i8, ptr %999, align 4
  %conv.i.i1053 = zext i8 %1001 to i16
  %1002 = ptrtoint ptr %msg.i.i1049 to i32
  call void @__asan_store2_noabort(i32 %1002)
  store i16 %conv.i.i1053, ptr %msg.i.i1049, align 4
  %flags.i.i1054 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1049, i32 0, i32 1
  %1003 = ptrtoint ptr %flags.i.i1054 to i32
  call void @__asan_store2_noabort(i32 %1003)
  store i16 0, ptr %flags.i.i1054, align 2
  %buf1.i.i1055 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1049, i32 0, i32 3
  %1004 = ptrtoint ptr %buf1.i.i1055 to i32
  call void @__asan_store4_noabort(i32 %1004)
  store ptr %buf.i.i1048, ptr %buf1.i.i1055, align 4
  %1005 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %1, align 4
  %call.i.i1056 = call i32 @i2c_transfer(ptr noundef %1006, ptr noundef nonnull %msg.i.i1049, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i1056)
  %cmp.not.i.i1057 = icmp eq i32 %call.i.i1056, 1
  br i1 %cmp.not.i.i1057, label %timeout161.stv0297_writereg_mask.exit1062_crit_edge, label %do.end.i.i1060

timeout161.stv0297_writereg_mask.exit1062_crit_edge: ; preds = %timeout161
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit1062

do.end.i.i1060:                                   ; preds = %timeout161
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i1058 = zext i8 %992 to i32
  %call5.i.i1059 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 106, i32 noundef %conv4.i.i1058, i32 noundef %call.i.i1056) #10
  br label %stv0297_writereg_mask.exit1062

stv0297_writereg_mask.exit1062:                   ; preds = %do.end.i.i1060, %timeout161.stv0297_writereg_mask.exit1062_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1049) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i1048) #6
  br label %cleanup

cleanup:                                          ; preds = %stv0297_writereg_mask.exit1062, %stv0297_writereg_mask.exit1047, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %stv0297_writereg_mask.exit1062 ], [ 0, %stv0297_writereg_mask.exit1047 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 0)
  %call1 = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -125)
  %base_freq = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %base_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_freq, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p, align 4
  %and = lshr i32 %call1, 3
  %and.lobit30 = and i32 %and, 1
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %5 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.lobit30, ptr %inversion, align 4
  %config = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %invert = getelementptr inbounds %struct.stv0297_config, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = xor i32 %and.lobit30, 1
  %10 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %inversion, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 85) #6
  %call1.i = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 86) #6
  %shl.i = shl i32 %call1.i, 8
  %or.i = or i32 %shl.i, %call.i
  %call2.i = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 87) #6
  %shl3.i = shl i32 %call2.i, 16
  %or4.i = or i32 %or.i, %shl3.i
  %call5.i = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext 88) #6
  %shl6.i = shl i32 %call5.i, 24
  %or7.i = or i32 %or4.i, %shl6.i
  %conv.i = sext i32 %or7.i to i64
  %mul.i = mul nsw i64 %conv.i, 28900
  %shr.i = lshr i64 %mul.i, 32
  %conv8.i = trunc i64 %shr.i to i32
  %mul = mul i32 %conv8.i, 1000
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %11 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %symbol_rate, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %12 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fec_inner, align 4
  %13 = lshr i32 %call, 4
  %and7 = and i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and7)
  %14 = icmp ult i32 %and7, 5
  br i1 %14, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stv0297_get_frontend, i32 0, i32 %and7
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation15 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %16 = ptrtoint ptr %modulation15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.load, ptr %modulation15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -33)
  %and = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 31
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %BER = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %BER) #6
  %2 = ptrtoint ptr %BER to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %BER, align 1, !annotation !47
  %3 = getelementptr inbounds [3 x i8], ptr %BER, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !47
  %5 = getelementptr inbounds [3 x i8], ptr %BER, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !47
  call fastcc void @stv0297_readregs(ptr noundef %1, i8 noundef zeroext -96, ptr noundef nonnull %BER, i8 noundef zeroext 3)
  %7 = ptrtoint ptr %BER to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %BER, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool.not = icmp sgt i8 %8, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 1
  %conv2 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  %conv4 = zext i8 %12 to i32
  %or = or i32 %shl, %conv4
  %last_ber = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %last_ber to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %last_ber, align 4
  %call.i = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -96) #6
  %14 = trunc i32 %call.i to i8
  %conv4.i = or i8 %14, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %15 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -96, ptr %buf.i.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %18 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 196607, ptr %18, align 4
  %config.i.i = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %conv.i.i = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.then.stv0297_writereg_mask.exit_crit_edge, label %do.end.i.i

if.then.stv0297_writereg_mask.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i = zext i8 %conv4.i to i32
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 160, i32 noundef %conv4.i.i, i32 noundef %call.i.i) #10
  br label %stv0297_writereg_mask.exit

stv0297_writereg_mask.exit:                       ; preds = %do.end.i.i, %if.then.stv0297_writereg_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %if.end

if.end:                                           ; preds = %stv0297_writereg_mask.exit, %entry.if.end_crit_edge
  %last_ber6 = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %last_ber6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_ber6, align 4
  %31 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ber, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %BER) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %STRENGTH = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %STRENGTH) #6
  %2 = ptrtoint ptr %STRENGTH to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %STRENGTH, align 1, !annotation !47
  %3 = getelementptr inbounds [3 x i8], ptr %STRENGTH, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !47
  %5 = getelementptr inbounds [3 x i8], ptr %STRENGTH, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !47
  call fastcc void @stv0297_readregs(ptr noundef %1, i8 noundef zeroext 65, ptr noundef nonnull %STRENGTH, i8 noundef zeroext 3)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %9 = and i8 %8, 3
  %and = zext i8 %9 to i16
  %shl = shl nuw nsw i16 %and, 8
  %10 = ptrtoint ptr %STRENGTH to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %STRENGTH, align 1
  %conv2 = zext i8 %11 to i16
  %or = or i16 %shl, %conv2
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 1
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call i16 @llvm.usub.sat.i16(i16 %or, i16 512)
  br label %if.end22

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = call i16 @llvm.usub.sat.i16(i16 511, i16 %or)
  br label %if.end22

if.end22:                                         ; preds = %if.else12, %if.then
  %tmp.0 = phi i16 [ %15, %if.then ], [ %16, %if.else12 ]
  %shl24 = shl i16 %tmp.0, 7
  %17 = lshr i16 %tmp.0, 2
  %or26 = or i16 %shl24, %17
  %18 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or26, ptr %strength, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %STRENGTH) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %SNR = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %SNR) #6
  %2 = ptrtoint ptr %SNR to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %SNR, align 1, !annotation !47
  %3 = getelementptr inbounds [2 x i8], ptr %SNR, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !47
  call fastcc void @stv0297_readregs(ptr noundef %1, i8 noundef zeroext 7, ptr noundef nonnull %SNR, i8 noundef zeroext 2)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %3, align 1
  %conv = zext i8 %6 to i16
  %shl = shl nuw i16 %conv, 8
  %7 = ptrtoint ptr %SNR to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %SNR, align 1
  %conv2 = zext i8 %8 to i16
  %or = or i16 %shl, %conv2
  %9 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %or, ptr %snr, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %SNR) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i.i24 = alloca [2 x i8], align 1
  %msg.i.i25 = alloca %struct.i2c_msg, align 4
  %buf.i.i9 = alloca [2 x i8], align 1
  %msg.i.i10 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call.i = tail call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -33) #6
  %2 = trunc i32 %call.i to i8
  %conv4.i = or i8 %2, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -33, ptr %buf.i.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i.i = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %entry.stv0297_writereg_mask.exit_crit_edge, label %do.end.i.i

entry.stv0297_writereg_mask.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i = zext i8 %conv4.i to i32
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 223, i32 noundef %conv4.i.i, i32 noundef %call.i.i) #10
  br label %stv0297_writereg_mask.exit

stv0297_writereg_mask.exit:                       ; preds = %do.end.i.i, %entry.stv0297_writereg_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %call1 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -43)
  %shl = shl i32 %call1, 8
  %call2 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -44)
  %or = or i32 %shl, %call2
  %17 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %ucblocks, align 4
  %call.i11 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -33) #6
  %18 = trunc i32 %call.i11 to i8
  %19 = and i8 %18, -4
  %conv4.i13 = or i8 %19, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i9) #6
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i.i9, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i.i9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -33, ptr %buf.i.i9, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4.i13, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i10) #6
  %23 = getelementptr inbounds i8, ptr %msg.i.i10, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %23, align 4
  %25 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv.i.i15 = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i.i10 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i15, ptr %msg.i.i10, align 4
  %flags.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i.i16 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i.i16, align 2
  %buf1.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i10, i32 0, i32 3
  %31 = ptrtoint ptr %buf1.i.i17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i.i9, ptr %buf1.i.i17, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i.i18 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i.i10, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i18)
  %cmp.not.i.i19 = icmp eq i32 %call.i.i18, 1
  br i1 %cmp.not.i.i19, label %stv0297_writereg_mask.exit.stv0297_writereg_mask.exit23_crit_edge, label %do.end.i.i22

stv0297_writereg_mask.exit.stv0297_writereg_mask.exit23_crit_edge: ; preds = %stv0297_writereg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit23

do.end.i.i22:                                     ; preds = %stv0297_writereg_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i20 = zext i8 %conv4.i13 to i32
  %call5.i.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 223, i32 noundef %conv4.i.i20, i32 noundef %call.i.i18) #10
  br label %stv0297_writereg_mask.exit23

stv0297_writereg_mask.exit23:                     ; preds = %do.end.i.i22, %stv0297_writereg_mask.exit.stv0297_writereg_mask.exit23_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i10) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i9) #6
  %call.i26 = call fastcc i32 @stv0297_readreg(ptr noundef %1, i8 noundef zeroext -33) #6
  %34 = trunc i32 %call.i26 to i8
  %35 = and i8 %34, -4
  %conv4.i28 = or i8 %35, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i24) #6
  %36 = getelementptr inbounds [2 x i8], ptr %buf.i.i24, i32 0, i32 1
  %37 = ptrtoint ptr %buf.i.i24 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -33, ptr %buf.i.i24, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv4.i28, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i25) #6
  %39 = getelementptr inbounds i8, ptr %msg.i.i25, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %39, align 4
  %41 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %conv.i.i30 = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i.i25 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i.i30, ptr %msg.i.i25, align 4
  %flags.i.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i.i31 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i.i31, align 2
  %buf1.i.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25, i32 0, i32 3
  %47 = ptrtoint ptr %buf1.i.i32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i.i24, ptr %buf1.i.i32, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i33 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i.i25, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i33)
  %cmp.not.i.i34 = icmp eq i32 %call.i.i33, 1
  br i1 %cmp.not.i.i34, label %stv0297_writereg_mask.exit23.stv0297_writereg_mask.exit38_crit_edge, label %do.end.i.i37

stv0297_writereg_mask.exit23.stv0297_writereg_mask.exit38_crit_edge: ; preds = %stv0297_writereg_mask.exit23
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg_mask.exit38

do.end.i.i37:                                     ; preds = %stv0297_writereg_mask.exit23
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i.i35 = zext i8 %conv4.i28 to i32
  %call5.i.i36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 223, i32 noundef %conv4.i.i35, i32 noundef %call.i.i33) #10
  br label %stv0297_writereg_mask.exit38

stv0297_writereg_mask.exit38:                     ; preds = %do.end.i.i37, %stv0297_writereg_mask.exit23.stv0297_writereg_mask.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i25) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i24) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0297_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -121, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 120, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.stv0297_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.stv0297_writereg.exit_crit_edge, label %do.end.i

if.then.stv0297_writereg.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 135, i32 noundef 120, i32 noundef %call.i) #10
  br label %stv0297_writereg.exit

stv0297_writereg.exit:                            ; preds = %do.end.i, %if.then.stv0297_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %17 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -122, ptr %buf.i3, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -56, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %19 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 196607, ptr %19, align 4
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv.i6 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i7, align 2
  %buf1.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %27 = ptrtoint ptr %buf1.i9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i3, ptr %buf1.i9, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %stv0297_writereg.exit.stv0297_writereg.exit14_crit_edge, label %do.end.i13

stv0297_writereg.exit.stv0297_writereg.exit14_crit_edge: ; preds = %stv0297_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0297_writereg.exit14

do.end.i13:                                       ; preds = %stv0297_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 134, i32 noundef 200, i32 noundef %call.i10) #10
  br label %stv0297_writereg.exit14

stv0297_writereg.exit14:                          ; preds = %do.end.i13, %stv0297_writereg.exit.stv0297_writereg.exit14_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  br label %if.end

if.end:                                           ; preds = %stv0297_writereg.exit14, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stv0297_readregs(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg1, ptr noundef %b, i8 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %reg1.addr = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg1.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg1, ptr %reg1.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %config = getelementptr inbounds %struct.stv0297_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len1, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reg1.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %11 = load i8, ptr %4, align 4
  %conv5 = zext i8 %11 to i16
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv5, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %13 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %conv8 = zext i8 %len to i16
  %14 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv8, ptr %len7, align 4
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %15 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b, ptr %buf9, align 4
  %stop_during_read = getelementptr inbounds %struct.stv0297_config, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %stop_during_read to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %stop_during_read, align 4
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %call17 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef %arrayinit.element, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 1
  br i1 %cmp18.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %call29 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 2
  br i1 %cmp30.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call29.sink = phi i32 [ %call, %if.then.cleanup.sink.split_crit_edge ], [ %call17, %if.end.cleanup.sink.split_crit_edge ], [ %call29, %if.else.cleanup.sink.split_crit_edge ]
  %22 = ptrtoint ptr %reg1.addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %.sink = load i8, ptr %reg1.addr, align 1
  %conv37 = zext i8 %.sink to i32
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef %conv37, i32 noundef %call29.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 709, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 710, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 711, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__ksymtab_stv0297_attach, !8, !"__ksymtab_stv0297_attach", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 713, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 66, i32 4}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @stv0297_readreg._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @stv0297_readreg._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @stv0297_readreg._entry.3, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 70, i32 4}
!17 = !{ptr @stv0297_readreg._entry_ptr.4, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @stv0297_readreg._entry.5, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 75, i32 4}
!20 = !{ptr @stv0297_readreg._entry_ptr.6, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @stv0297_ops, !22, !"stv0297_ops", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 681, i32 38}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 48, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @stv0297_writereg._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @stv0297_writereg._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 106, i32 4}
!30 = !{ptr @stv0297_readregs._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stv0297_readregs._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @stv0297_readregs._entry.10, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 110, i32 4}
!34 = !{ptr @stv0297_readregs._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @stv0297_readregs._entry.12, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/stv0297.c", i32 115, i32 4}
!37 = !{ptr @stv0297_readregs._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
