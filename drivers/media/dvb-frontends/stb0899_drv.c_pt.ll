; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stb0899_drv.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stb0899_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stb0899_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stb0899_attach\09\09\09\09"
module asm "\09.long\09__crc_stb0899_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stb0899_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stb0899_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stb0899_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stb0899_tab = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stb0899_state = type { ptr, ptr, %struct.dvb_frontend, ptr, %struct.stb0899_internal, i32, %struct.stb0899_params, i32, %struct.mutex }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.stb0899_internal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i8, i32, i8, i8 }
%struct.stb0899_params = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stb0899_postproc = type { i16, i8 }
%struct.stb0899_s1_reg = type { i16, i8 }
%struct.stb0899_s2_reg = type { i16, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }

@__param_str_verbose = internal constant [16 x i8] c"stb0899.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype290 = internal constant [29 x i8] c"stb0899.parmtype=verbose:int\00", section ".modinfo", align 1
@_stb0899_read_s2reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013%s ERR(1), Device=[0x%04x], Base address=[0x%08x], Offset=[0x%04x], Status=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_stb0899_read_s2reg\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/stb0899_drv.c\00", [54 x i8] zeroinitializer }, align 32
@_stb0899_read_s2reg._entry_ptr = internal global ptr @_stb0899_read_s2reg._entry, section ".printk_index", align 4
@_stb0899_read_s2reg._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013%s ERR(2), Device=[0x%04x], Base address=[0x%08x], Offset=[0x%04x], Status=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@_stb0899_read_s2reg._entry_ptr.5 = internal global ptr @_stb0899_read_s2reg._entry.3, section ".printk_index", align 4
@_stb0899_read_s2reg._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013%s ERR(3), Device=[0x%04x], Base address=[0x%08x], Offset=[0x%04x], Status=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@_stb0899_read_s2reg._entry_ptr.8 = internal global ptr @_stb0899_read_s2reg._entry.6, section ".printk_index", align 4
@_stb0899_read_s2reg._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017%s Device=[0x%04x], Base address=[0x%08x], Offset=[0x%04x], Data=[0x%08x]\0A\00", [51 x i8] zeroinitializer }, align 32
@_stb0899_read_s2reg._entry_ptr.11 = internal global ptr @_stb0899_read_s2reg._entry.9, section ".printk_index", align 4
@stb0899_write_s2reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017%s Device=[0x%04x], Base Address=[0x%08x], Offset=[0x%04x], Data=[0x%08x]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stb0899_write_s2reg\00", [44 x i8] zeroinitializer }, align 32
@stb0899_write_s2reg._entry_ptr = internal global ptr @stb0899_write_s2reg._entry, section ".printk_index", align 4
@stb0899_write_s2reg._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013%s ERR (1), Device=[0x%04x], Base Address=[0x%08x], Offset=[0x%04x], Data=[0x%08x], status=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_write_s2reg._entry_ptr.16 = internal global ptr @stb0899_write_s2reg._entry.14, section ".printk_index", align 4
@stb0899_write_s2reg._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013%s ERR (2), Device=[0x%04x], Base Address=[0x%08x], Offset=[0x%04x], Data=[0x%08x], status=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_write_s2reg._entry_ptr.19 = internal global ptr @stb0899_write_s2reg._entry.17, section ".printk_index", align 4
@stb0899_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s Read error, Reg=[0x%04x], Count=%u, Status=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb0899_read_regs\00", [46 x i8] zeroinitializer }, align 32
@stb0899_read_regs._entry_ptr = internal global ptr @stb0899_read_regs._entry, section ".printk_index", align 4
@stb0899_read_regs._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: %s [0x%04x]: %*ph\0A\00", [39 x i8] zeroinitializer }, align 32
@stb0899_read_regs._entry_ptr.24 = internal global ptr @stb0899_read_regs._entry.22, section ".printk_index", align 4
@stb0899_read_regs._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015%s: %s [0x%04x]: %*ph\0A\00", [39 x i8] zeroinitializer }, align 32
@stb0899_read_regs._entry_ptr.27 = internal global ptr @stb0899_read_regs._entry.25, section ".printk_index", align 4
@stb0899_read_regs._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: %s [0x%04x]: %*ph\0A\00", [39 x i8] zeroinitializer }, align 32
@stb0899_read_regs._entry_ptr.30 = internal global ptr @stb0899_read_regs._entry.28, section ".printk_index", align 4
@stb0899_read_regs._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s [0x%04x]: %*ph\0A\00", [39 x i8] zeroinitializer }, align 32
@stb0899_read_regs._entry_ptr.33 = internal global ptr @stb0899_read_regs._entry.31, section ".printk_index", align 4
@stb0899_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: i2c wr reg=%04x: len=%d is too big!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stb0899_write_regs\00", [45 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr = internal global ptr @stb0899_write_regs._entry, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stb0899\00", [24 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.35, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr.38 = internal global ptr @stb0899_write_regs._entry.37, section ".printk_index", align 4
@stb0899_write_regs._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.35, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr.40 = internal global ptr @stb0899_write_regs._entry.39, section ".printk_index", align 4
@stb0899_write_regs._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.35, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr.42 = internal global ptr @stb0899_write_regs._entry.41, section ".printk_index", align 4
@stb0899_write_regs._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.35, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr.44 = internal global ptr @stb0899_write_regs._entry.43, section ".printk_index", align 4
@stb0899_write_regs._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: Reg=[0x%04x], Data=[0x%02x ...], Count=%u, Status=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr.47 = internal global ptr @stb0899_write_regs._entry.45, section ".printk_index", align 4
@stb0899_write_regs._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015%s: Reg=[0x%04x], Data=[0x%02x ...], Count=%u, Status=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr.50 = internal global ptr @stb0899_write_regs._entry.48, section ".printk_index", align 4
@stb0899_write_regs._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.35, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: Reg=[0x%04x], Data=[0x%02x ...], Count=%u, Status=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr.53 = internal global ptr @stb0899_write_regs._entry.51, section ".printk_index", align 4
@stb0899_write_regs._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.35, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: Reg=[0x%04x], Data=[0x%02x ...], Count=%u, Status=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_write_regs._entry_ptr.56 = internal global ptr @stb0899_write_regs._entry.54, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Enabling I2C Repeater ...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb0899_i2c_gate_ctrl\00", [42 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr = internal global ptr @stb0899_i2c_gate_ctrl._entry, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s: Enabling I2C Repeater ...\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.61 = internal global ptr @stb0899_i2c_gate_ctrl._entry.59, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: Enabling I2C Repeater ...\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.64 = internal global ptr @stb0899_i2c_gate_ctrl._entry.62, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Enabling I2C Repeater ...\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.67 = internal global ptr @stb0899_i2c_gate_ctrl._entry.65, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.2, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Disabling I2C Repeater ...\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.70 = internal global ptr @stb0899_i2c_gate_ctrl._entry.68, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.2, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015%s: Disabling I2C Repeater ...\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.73 = internal global ptr @stb0899_i2c_gate_ctrl._entry.71, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.58, ptr @.str.2, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Disabling I2C Repeater ...\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.76 = internal global ptr @stb0899_i2c_gate_ctrl._entry.74, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.58, ptr @.str.2, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Disabling I2C Repeater ...\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.79 = internal global ptr @stb0899_i2c_gate_ctrl._entry.77, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.58, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: I2C Repeater control failed\0A\00", [61 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.82 = internal global ptr @stb0899_i2c_gate_ctrl._entry.80, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.58, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015%s: I2C Repeater control failed\0A\00", [61 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.85 = internal global ptr @stb0899_i2c_gate_ctrl._entry.83, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.58, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: I2C Repeater control failed\0A\00", [61 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.88 = internal global ptr @stb0899_i2c_gate_ctrl._entry.86, section ".printk_index", align 4
@stb0899_i2c_gate_ctrl._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.58, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: I2C Repeater control failed\0A\00", [61 x i8] zeroinitializer }, align 32
@stb0899_i2c_gate_ctrl._entry_ptr.91 = internal global ptr @stb0899_i2c_gate_ctrl._entry.89, section ".printk_index", align 4
@stb0899_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"STB0899 Multistandard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 5000000, i32 45000000, i32 0, i32 268436993 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr @stb0899_detach, ptr @stb0899_release, ptr null, ptr @stb0899_init, ptr @stb0899_sleep, ptr null, ptr null, ptr null, ptr null, ptr @stb0899_frontend_algo, ptr null, ptr null, ptr @stb0899_get_frontend, ptr @stb0899_read_status, ptr @stb0899_read_ber, ptr @stb0899_read_signal_strength, ptr @stb0899_read_snr, ptr null, ptr null, ptr @stb0899_send_diseqc_msg, ptr @stb0899_recv_slave_reply, ptr @stb0899_send_diseqc_burst, ptr @stb0899_set_tone, ptr @stb0899_set_voltage, ptr null, ptr null, ptr @stb0899_i2c_gate_ctrl, ptr null, ptr null, ptr @stb0899_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@stb0899_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Exiting .. !\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb0899_attach\00", [17 x i8] zeroinitializer }, align 32
@stb0899_attach._entry_ptr = internal global ptr @stb0899_attach._entry, section ".printk_index", align 4
@stb0899_attach._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 1634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Attaching STB0899 \0A\00", [40 x i8] zeroinitializer }, align 32
@stb0899_attach._entry_ptr.96 = internal global ptr @stb0899_attach._entry.94, section ".printk_index", align 4
@__kstrtab_stb0899_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stb0899_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stb0899_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stb0899_attach to i32), ptr @__kstrtab_stb0899_attach, ptr @__kstrtabns_stb0899_attach }, section "___ksymtab+stb0899_attach", align 4
@__UNIQUE_ID_verbose291 = internal constant [41 x i8] c"stb0899.parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [28 x i8] c"stb0899.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [47 x i8] c"stb0899.description=STB0899 Multi-Std frontend\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"stb0899.file=drivers/media/dvb-frontends/stb0899\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"stb0899.license=GPL\00", section ".modinfo", align 1
@_stb0899_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Read error, Reg=[0x%02x], Status=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_stb0899_read_reg\00", [46 x i8] zeroinitializer }, align 32
@_stb0899_read_reg._entry_ptr = internal global ptr @_stb0899_read_reg._entry, section ".printk_index", align 4
@_stb0899_read_reg._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s: Read error, Reg=[0x%02x], Status=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@_stb0899_read_reg._entry_ptr.101 = internal global ptr @_stb0899_read_reg._entry.99, section ".printk_index", align 4
@_stb0899_read_reg._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Read error, Reg=[0x%02x], Status=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@_stb0899_read_reg._entry_ptr.104 = internal global ptr @_stb0899_read_reg._entry.102, section ".printk_index", align 4
@_stb0899_read_reg._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.98, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: Read error, Reg=[0x%02x], Status=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@_stb0899_read_reg._entry_ptr.107 = internal global ptr @_stb0899_read_reg._entry.105, section ".printk_index", align 4
@_stb0899_read_reg._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.98, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Reg=[0x%02x], data=%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@_stb0899_read_reg._entry_ptr.110 = internal global ptr @_stb0899_read_reg._entry.108, section ".printk_index", align 4
@_stb0899_read_reg._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.98, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s: Reg=[0x%02x], data=%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@_stb0899_read_reg._entry_ptr.113 = internal global ptr @_stb0899_read_reg._entry.111, section ".printk_index", align 4
@_stb0899_read_reg._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.98, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Reg=[0x%02x], data=%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@_stb0899_read_reg._entry_ptr.116 = internal global ptr @_stb0899_read_reg._entry.114, section ".printk_index", align 4
@_stb0899_read_reg._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.98, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Reg=[0x%02x], data=%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@_stb0899_read_reg._entry_ptr.119 = internal global ptr @_stb0899_read_reg._entry.117, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stb0899_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Release Frontend\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stb0899_release\00", [16 x i8] zeroinitializer }, align 32
@stb0899_release._entry_ptr = internal global ptr @stb0899_release._entry, section ".printk_index", align 4
@stb0899_release._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015%s: Release Frontend\0A\00", [40 x i8] zeroinitializer }, align 32
@stb0899_release._entry_ptr.124 = internal global ptr @stb0899_release._entry.122, section ".printk_index", align 4
@stb0899_release._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Release Frontend\0A\00", [40 x i8] zeroinitializer }, align 32
@stb0899_release._entry_ptr.127 = internal global ptr @stb0899_release._entry.125, section ".printk_index", align 4
@stb0899_release._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.121, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Release Frontend\0A\00", [40 x i8] zeroinitializer }, align 32
@stb0899_release._entry_ptr.130 = internal global ptr @stb0899_release._entry.128, section ".printk_index", align 4
@stb0899_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Initializing STB0899 ... \0A\00", [63 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stb0899_init\00", [19 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr = internal global ptr @stb0899_init._entry, section ".printk_index", align 4
@stb0899_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s: Initializing STB0899 ... \0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.135 = internal global ptr @stb0899_init._entry.133, section ".printk_index", align 4
@stb0899_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.132, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: Initializing STB0899 ... \0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.138 = internal global ptr @stb0899_init._entry.136, section ".printk_index", align 4
@stb0899_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.132, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Initializing STB0899 ... \0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.141 = internal global ptr @stb0899_init._entry.139, section ".printk_index", align 4
@stb0899_init._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.132, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: init device\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.144 = internal global ptr @stb0899_init._entry.142, section ".printk_index", align 4
@stb0899_init._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.132, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\015%s: init device\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.147 = internal global ptr @stb0899_init._entry.145, section ".printk_index", align 4
@stb0899_init._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.132, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: init device\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.150 = internal global ptr @stb0899_init._entry.148, section ".printk_index", align 4
@stb0899_init._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.132, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: init device\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.153 = internal global ptr @stb0899_init._entry.151, section ".printk_index", align 4
@stb0899_init._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.132, ptr @.str.2, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: init S2 demod\0A\00", [43 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.156 = internal global ptr @stb0899_init._entry.154, section ".printk_index", align 4
@stb0899_init._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.132, ptr @.str.2, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015%s: init S2 demod\0A\00", [43 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.159 = internal global ptr @stb0899_init._entry.157, section ".printk_index", align 4
@stb0899_init._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.132, ptr @.str.2, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: init S2 demod\0A\00", [43 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.162 = internal global ptr @stb0899_init._entry.160, section ".printk_index", align 4
@stb0899_init._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.132, ptr @.str.2, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: init S2 demod\0A\00", [43 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.165 = internal global ptr @stb0899_init._entry.163, section ".printk_index", align 4
@stb0899_init._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.132, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: init S1 demod\0A\00", [43 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.168 = internal global ptr @stb0899_init._entry.166, section ".printk_index", align 4
@stb0899_init._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.132, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015%s: init S1 demod\0A\00", [43 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.171 = internal global ptr @stb0899_init._entry.169, section ".printk_index", align 4
@stb0899_init._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.132, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: init S1 demod\0A\00", [43 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.174 = internal global ptr @stb0899_init._entry.172, section ".printk_index", align 4
@stb0899_init._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.132, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: init S1 demod\0A\00", [43 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.177 = internal global ptr @stb0899_init._entry.175, section ".printk_index", align 4
@stb0899_init._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.132, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: init S2 FEC\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.180 = internal global ptr @stb0899_init._entry.178, section ".printk_index", align 4
@stb0899_init._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.132, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\015%s: init S2 FEC\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.183 = internal global ptr @stb0899_init._entry.181, section ".printk_index", align 4
@stb0899_init._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.132, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: init S2 FEC\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.186 = internal global ptr @stb0899_init._entry.184, section ".printk_index", align 4
@stb0899_init._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.132, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: init S2 FEC\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.189 = internal global ptr @stb0899_init._entry.187, section ".printk_index", align 4
@stb0899_init._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.132, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013%s: init TST\0A\00", [16 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.192 = internal global ptr @stb0899_init._entry.190, section ".printk_index", align 4
@stb0899_init._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.132, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\015%s: init TST\0A\00", [16 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.195 = internal global ptr @stb0899_init._entry.193, section ".printk_index", align 4
@stb0899_init._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.132, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: init TST\0A\00", [16 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.198 = internal global ptr @stb0899_init._entry.196, section ".printk_index", align 4
@stb0899_init._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.132, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: init TST\0A\00", [16 x i8] zeroinitializer }, align 32
@stb0899_init._entry_ptr.201 = internal global ptr @stb0899_init._entry.199, section ".printk_index", align 4
@stb0899_get_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: div=%d, mclk=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb0899_get_mclk\00", [47 x i8] zeroinitializer }, align 32
@stb0899_get_mclk._entry_ptr = internal global ptr @stb0899_get_mclk._entry, section ".printk_index", align 4
@stb0899_get_mclk._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.203, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: div=%d, mclk=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_get_mclk._entry_ptr.206 = internal global ptr @stb0899_get_mclk._entry.204, section ".printk_index", align 4
@stb0899_get_mclk._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.203, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: div=%d, mclk=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_get_mclk._entry_ptr.209 = internal global ptr @stb0899_get_mclk._entry.207, section ".printk_index", align 4
@stb0899_get_mclk._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.203, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: div=%d, mclk=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_get_mclk._entry_ptr.212 = internal global ptr @stb0899_get_mclk._entry.210, section ".printk_index", align 4
@stb0899_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Going to Sleep .. (Really tired .. :-))\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stb0899_sleep\00", [18 x i8] zeroinitializer }, align 32
@stb0899_sleep._entry_ptr = internal global ptr @stb0899_sleep._entry, section ".printk_index", align 4
@stb0899_sleep._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015%s: Going to Sleep .. (Really tired .. :-))\0A\00", [49 x i8] zeroinitializer }, align 32
@stb0899_sleep._entry_ptr.217 = internal global ptr @stb0899_sleep._entry.215, section ".printk_index", align 4
@stb0899_sleep._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.214, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: Going to Sleep .. (Really tired .. :-))\0A\00", [49 x i8] zeroinitializer }, align 32
@stb0899_sleep._entry_ptr.220 = internal global ptr @stb0899_sleep._entry.218, section ".printk_index", align 4
@stb0899_sleep._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.214, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Going to Sleep .. (Really tired .. :-))\0A\00", [49 x i8] zeroinitializer }, align 32
@stb0899_sleep._entry_ptr.223 = internal global ptr @stb0899_sleep._entry.221, section ".printk_index", align 4
@stb0899_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.2, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s: Get params\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stb0899_get_frontend\00", [43 x i8] zeroinitializer }, align 32
@stb0899_get_frontend._entry_ptr = internal global ptr @stb0899_get_frontend._entry, section ".printk_index", align 4
@stb0899_get_frontend._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.225, ptr @.str.2, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s: Get params\0A\00", [46 x i8] zeroinitializer }, align 32
@stb0899_get_frontend._entry_ptr.228 = internal global ptr @stb0899_get_frontend._entry.226, section ".printk_index", align 4
@stb0899_get_frontend._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.225, ptr @.str.2, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: Get params\0A\00", [46 x i8] zeroinitializer }, align 32
@stb0899_get_frontend._entry_ptr.231 = internal global ptr @stb0899_get_frontend._entry.229, section ".printk_index", align 4
@stb0899_get_frontend._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.225, ptr @.str.2, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: Get params\0A\00", [46 x i8] zeroinitializer }, align 32
@stb0899_get_frontend._entry_ptr.234 = internal global ptr @stb0899_get_frontend._entry.232, section ".printk_index", align 4
@stb0899_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Delivery system DVB-S/DSS\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stb0899_read_status\00", [44 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr = internal global ptr @stb0899_read_status._entry, section ".printk_index", align 4
@stb0899_read_status._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.236, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s: Delivery system DVB-S/DSS\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.239 = internal global ptr @stb0899_read_status._entry.237, section ".printk_index", align 4
@stb0899_read_status._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.236, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: Delivery system DVB-S/DSS\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.242 = internal global ptr @stb0899_read_status._entry.240, section ".printk_index", align 4
@stb0899_read_status._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.236, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Delivery system DVB-S/DSS\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.245 = internal global ptr @stb0899_read_status._entry.243, section ".printk_index", align 4
@stb0899_read_status._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.236, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: --------> FE_HAS_CARRIER | FE_HAS_LOCK\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.248 = internal global ptr @stb0899_read_status._entry.246, section ".printk_index", align 4
@stb0899_read_status._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.236, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015%s: --------> FE_HAS_CARRIER | FE_HAS_LOCK\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.251 = internal global ptr @stb0899_read_status._entry.249, section ".printk_index", align 4
@stb0899_read_status._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.236, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: --------> FE_HAS_CARRIER | FE_HAS_LOCK\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.254 = internal global ptr @stb0899_read_status._entry.252, section ".printk_index", align 4
@stb0899_read_status._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.236, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: --------> FE_HAS_CARRIER | FE_HAS_LOCK\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.257 = internal global ptr @stb0899_read_status._entry.255, section ".printk_index", align 4
@stb0899_read_status._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.236, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: --------> FE_HAS_VITERBI | FE_HAS_SYNC\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.260 = internal global ptr @stb0899_read_status._entry.258, section ".printk_index", align 4
@stb0899_read_status._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.236, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015%s: --------> FE_HAS_VITERBI | FE_HAS_SYNC\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.263 = internal global ptr @stb0899_read_status._entry.261, section ".printk_index", align 4
@stb0899_read_status._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.236, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: --------> FE_HAS_VITERBI | FE_HAS_SYNC\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.266 = internal global ptr @stb0899_read_status._entry.264, section ".printk_index", align 4
@stb0899_read_status._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.236, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: --------> FE_HAS_VITERBI | FE_HAS_SYNC\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.269 = internal global ptr @stb0899_read_status._entry.267, section ".printk_index", align 4
@stb0899_read_status._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.236, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Delivery system DVB-S2\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.272 = internal global ptr @stb0899_read_status._entry.270, section ".printk_index", align 4
@stb0899_read_status._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.236, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: Delivery system DVB-S2\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.275 = internal global ptr @stb0899_read_status._entry.273, section ".printk_index", align 4
@stb0899_read_status._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.236, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Delivery system DVB-S2\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.278 = internal global ptr @stb0899_read_status._entry.276, section ".printk_index", align 4
@stb0899_read_status._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.236, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Delivery system DVB-S2\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.281 = internal global ptr @stb0899_read_status._entry.279, section ".printk_index", align 4
@stb0899_read_status._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.236, ptr @.str.2, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: UWP & CSM Lock ! ---> DVB-S2 FE_HAS_CARRIER\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.284 = internal global ptr @stb0899_read_status._entry.282, section ".printk_index", align 4
@stb0899_read_status._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.236, ptr @.str.2, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015%s: UWP & CSM Lock ! ---> DVB-S2 FE_HAS_CARRIER\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.287 = internal global ptr @stb0899_read_status._entry.285, section ".printk_index", align 4
@stb0899_read_status._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.236, ptr @.str.2, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: UWP & CSM Lock ! ---> DVB-S2 FE_HAS_CARRIER\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.290 = internal global ptr @stb0899_read_status._entry.288, section ".printk_index", align 4
@stb0899_read_status._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.236, ptr @.str.2, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: UWP & CSM Lock ! ---> DVB-S2 FE_HAS_CARRIER\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.293 = internal global ptr @stb0899_read_status._entry.291, section ".printk_index", align 4
@stb0899_read_status._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.236, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: Packet Delineator Locked ! -----> DVB-S2 FE_HAS_LOCK\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.296 = internal global ptr @stb0899_read_status._entry.294, section ".printk_index", align 4
@stb0899_read_status._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.236, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015%s: Packet Delineator Locked ! -----> DVB-S2 FE_HAS_LOCK\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.299 = internal global ptr @stb0899_read_status._entry.297, section ".printk_index", align 4
@stb0899_read_status._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.236, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: Packet Delineator Locked ! -----> DVB-S2 FE_HAS_LOCK\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.302 = internal global ptr @stb0899_read_status._entry.300, section ".printk_index", align 4
@stb0899_read_status._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.236, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: Packet Delineator Locked ! -----> DVB-S2 FE_HAS_LOCK\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.305 = internal global ptr @stb0899_read_status._entry.303, section ".printk_index", align 4
@stb0899_read_status._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.236, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s: Packet Delineator found VITERBI ! -----> DVB-S2 FE_HAS_VITERBI\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.308 = internal global ptr @stb0899_read_status._entry.306, section ".printk_index", align 4
@stb0899_read_status._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.236, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015%s: Packet Delineator found VITERBI ! -----> DVB-S2 FE_HAS_VITERBI\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.311 = internal global ptr @stb0899_read_status._entry.309, section ".printk_index", align 4
@stb0899_read_status._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.236, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: Packet Delineator found VITERBI ! -----> DVB-S2 FE_HAS_VITERBI\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.314 = internal global ptr @stb0899_read_status._entry.312, section ".printk_index", align 4
@stb0899_read_status._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.236, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: Packet Delineator found VITERBI ! -----> DVB-S2 FE_HAS_VITERBI\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.317 = internal global ptr @stb0899_read_status._entry.315, section ".printk_index", align 4
@stb0899_read_status._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.236, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: Packet Delineator found SYNC ! -----> DVB-S2 FE_HAS_SYNC\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.320 = internal global ptr @stb0899_read_status._entry.318, section ".printk_index", align 4
@stb0899_read_status._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.236, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015%s: Packet Delineator found SYNC ! -----> DVB-S2 FE_HAS_SYNC\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.323 = internal global ptr @stb0899_read_status._entry.321, section ".printk_index", align 4
@stb0899_read_status._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @.str.236, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s: Packet Delineator found SYNC ! -----> DVB-S2 FE_HAS_SYNC\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.326 = internal global ptr @stb0899_read_status._entry.324, section ".printk_index", align 4
@stb0899_read_status._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.236, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s: Packet Delineator found SYNC ! -----> DVB-S2 FE_HAS_SYNC\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.329 = internal global ptr @stb0899_read_status._entry.327, section ".printk_index", align 4
@stb0899_read_status._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.236, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Unsupported delivery system\0A\00", [61 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.332 = internal global ptr @stb0899_read_status._entry.330, section ".printk_index", align 4
@stb0899_read_status._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.236, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015%s: Unsupported delivery system\0A\00", [61 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.335 = internal global ptr @stb0899_read_status._entry.333, section ".printk_index", align 4
@stb0899_read_status._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.236, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Unsupported delivery system\0A\00", [61 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.338 = internal global ptr @stb0899_read_status._entry.336, section ".printk_index", align 4
@stb0899_read_status._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.236, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Unsupported delivery system\0A\00", [61 x i8] zeroinitializer }, align 32
@stb0899_read_status._entry_ptr.341 = internal global ptr @stb0899_read_status._entry.339, section ".printk_index", align 4
@stb0899_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.342, ptr @.str.2, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb0899_read_ber\00", [47 x i8] zeroinitializer }, align 32
@stb0899_read_ber._entry_ptr = internal global ptr @stb0899_read_ber._entry, section ".printk_index", align 4
@stb0899_read_ber._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.342, ptr @.str.2, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_ber._entry_ptr.344 = internal global ptr @stb0899_read_ber._entry.343, section ".printk_index", align 4
@stb0899_read_ber._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.342, ptr @.str.2, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_ber._entry_ptr.346 = internal global ptr @stb0899_read_ber._entry.345, section ".printk_index", align 4
@stb0899_read_ber._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.342, ptr @.str.2, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_ber._entry_ptr.348 = internal global ptr @stb0899_read_ber._entry.347, section ".printk_index", align 4
@stb0899_dvbsrf_tab = internal constant { [31 x %struct.stb0899_tab], [40 x i8] } { [31 x %struct.stb0899_tab] [%struct.stb0899_tab { i32 -750, i32 -128 }, %struct.stb0899_tab { i32 -748, i32 -94 }, %struct.stb0899_tab { i32 -745, i32 -92 }, %struct.stb0899_tab { i32 -735, i32 -90 }, %struct.stb0899_tab { i32 -720, i32 -87 }, %struct.stb0899_tab { i32 -670, i32 -77 }, %struct.stb0899_tab { i32 -640, i32 -70 }, %struct.stb0899_tab { i32 -610, i32 -62 }, %struct.stb0899_tab { i32 -600, i32 -60 }, %struct.stb0899_tab { i32 -590, i32 -56 }, %struct.stb0899_tab { i32 -560, i32 -41 }, %struct.stb0899_tab { i32 -540, i32 -25 }, %struct.stb0899_tab { i32 -530, i32 -17 }, %struct.stb0899_tab { i32 -520, i32 -11 }, %struct.stb0899_tab { i32 -500, i32 1 }, %struct.stb0899_tab { i32 -490, i32 6 }, %struct.stb0899_tab { i32 -480, i32 10 }, %struct.stb0899_tab { i32 -440, i32 22 }, %struct.stb0899_tab { i32 -420, i32 27 }, %struct.stb0899_tab { i32 -400, i32 31 }, %struct.stb0899_tab { i32 -380, i32 34 }, %struct.stb0899_tab { i32 -340, i32 40 }, %struct.stb0899_tab { i32 -320, i32 43 }, %struct.stb0899_tab { i32 -280, i32 48 }, %struct.stb0899_tab { i32 -250, i32 52 }, %struct.stb0899_tab { i32 -230, i32 55 }, %struct.stb0899_tab { i32 -180, i32 61 }, %struct.stb0899_tab { i32 -140, i32 66 }, %struct.stb0899_tab { i32 -90, i32 73 }, %struct.stb0899_tab { i32 -80, i32 74 }, %struct.stb0899_tab { i32 500, i32 127 }], [40 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.350, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stb0899_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr = internal global ptr @stb0899_read_signal_strength._entry, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.351 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.350, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015%s: AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm\0A\00", [51 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.353 = internal global ptr @stb0899_read_signal_strength._entry.351, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.354 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.355, ptr @.str.350, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm\0A\00", [51 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.356 = internal global ptr @stb0899_read_signal_strength._entry.354, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.358, ptr @.str.350, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm\0A\00", [51 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.359 = internal global ptr @stb0899_read_signal_strength._entry.357, section ".printk_index", align 4
@stb0899_dvbs2rf_tab = internal constant { [24 x %struct.stb0899_tab], [32 x i8] } { [24 x %struct.stb0899_tab] [%struct.stb0899_tab { i32 700, i32 0 }, %struct.stb0899_tab { i32 -80, i32 3217 }, %struct.stb0899_tab { i32 -150, i32 3893 }, %struct.stb0899_tab { i32 -190, i32 4217 }, %struct.stb0899_tab { i32 -240, i32 4621 }, %struct.stb0899_tab { i32 -280, i32 4945 }, %struct.stb0899_tab { i32 -320, i32 5273 }, %struct.stb0899_tab { i32 -350, i32 5545 }, %struct.stb0899_tab { i32 -370, i32 5741 }, %struct.stb0899_tab { i32 -410, i32 6147 }, %struct.stb0899_tab { i32 -450, i32 6671 }, %struct.stb0899_tab { i32 -490, i32 7413 }, %struct.stb0899_tab { i32 -501, i32 7665 }, %struct.stb0899_tab { i32 -530, i32 8767 }, %struct.stb0899_tab { i32 -560, i32 10219 }, %struct.stb0899_tab { i32 -580, i32 10939 }, %struct.stb0899_tab { i32 -590, i32 11518 }, %struct.stb0899_tab { i32 -600, i32 11723 }, %struct.stb0899_tab { i32 -650, i32 12659 }, %struct.stb0899_tab { i32 -690, i32 13219 }, %struct.stb0899_tab { i32 -730, i32 13645 }, %struct.stb0899_tab { i32 -750, i32 13909 }, %struct.stb0899_tab { i32 -766, i32 14153 }, %struct.stb0899_tab { i32 -950, i32 16383 }], [32 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry.360 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.361, ptr @.str.350, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.362 = internal global ptr @stb0899_read_signal_strength._entry.360, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.363 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.364, ptr @.str.350, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015%s: IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.365 = internal global ptr @stb0899_read_signal_strength._entry.363, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @.str.350, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.368 = internal global ptr @stb0899_read_signal_strength._entry.366, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.369 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.350, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.371 = internal global ptr @stb0899_read_signal_strength._entry.369, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.372 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.350, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.373 = internal global ptr @stb0899_read_signal_strength._entry.372, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.350, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.375 = internal global ptr @stb0899_read_signal_strength._entry.374, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.350, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.377 = internal global ptr @stb0899_read_signal_strength._entry.376, section ".printk_index", align 4
@stb0899_read_signal_strength._entry.378 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.350, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_signal_strength._entry_ptr.379 = internal global ptr @stb0899_read_signal_strength._entry.378, section ".printk_index", align 4
@stb0899_cn_tab = internal constant { [20 x %struct.stb0899_tab], [32 x i8] } { [20 x %struct.stb0899_tab] [%struct.stb0899_tab { i32 200, i32 2600 }, %struct.stb0899_tab { i32 190, i32 2700 }, %struct.stb0899_tab { i32 180, i32 2860 }, %struct.stb0899_tab { i32 170, i32 3020 }, %struct.stb0899_tab { i32 160, i32 3210 }, %struct.stb0899_tab { i32 150, i32 3440 }, %struct.stb0899_tab { i32 140, i32 3710 }, %struct.stb0899_tab { i32 130, i32 4010 }, %struct.stb0899_tab { i32 120, i32 4360 }, %struct.stb0899_tab { i32 110, i32 4740 }, %struct.stb0899_tab { i32 100, i32 5190 }, %struct.stb0899_tab { i32 90, i32 5670 }, %struct.stb0899_tab { i32 80, i32 6200 }, %struct.stb0899_tab { i32 70, i32 6770 }, %struct.stb0899_tab { i32 60, i32 7360 }, %struct.stb0899_tab { i32 50, i32 7970 }, %struct.stb0899_tab { i32 40, i32 8250 }, %struct.stb0899_tab { i32 30, i32 9000 }, %struct.stb0899_tab { i32 20, i32 9450 }, %struct.stb0899_tab { i32 15, i32 9600 }], [32 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.381, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: NIR = 0x%02x%02x = %u, C/N = %d * 0.1 dBm\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb0899_read_snr\00", [47 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr = internal global ptr @stb0899_read_snr._entry, section ".printk_index", align 4
@stb0899_read_snr._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.381, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015%s: NIR = 0x%02x%02x = %u, C/N = %d * 0.1 dBm\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.384 = internal global ptr @stb0899_read_snr._entry.382, section ".printk_index", align 4
@stb0899_read_snr._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.381, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: NIR = 0x%02x%02x = %u, C/N = %d * 0.1 dBm\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.387 = internal global ptr @stb0899_read_snr._entry.385, section ".printk_index", align 4
@stb0899_read_snr._entry.388 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.389, ptr @.str.381, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: NIR = 0x%02x%02x = %u, C/N = %d * 0.1 dBm\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.390 = internal global ptr @stb0899_read_snr._entry.388, section ".printk_index", align 4
@stb0899_quant_tab = internal constant { [39 x %struct.stb0899_tab], [72 x i8] } { [39 x %struct.stb0899_tab] [%struct.stb0899_tab zeroinitializer, %struct.stb0899_tab { i32 0, i32 100 }, %struct.stb0899_tab { i32 600, i32 200 }, %struct.stb0899_tab { i32 950, i32 299 }, %struct.stb0899_tab { i32 1200, i32 398 }, %struct.stb0899_tab { i32 1400, i32 501 }, %struct.stb0899_tab { i32 1560, i32 603 }, %struct.stb0899_tab { i32 1690, i32 700 }, %struct.stb0899_tab { i32 1810, i32 804 }, %struct.stb0899_tab { i32 1910, i32 902 }, %struct.stb0899_tab { i32 2000, i32 1000 }, %struct.stb0899_tab { i32 2080, i32 1096 }, %struct.stb0899_tab { i32 2160, i32 1202 }, %struct.stb0899_tab { i32 2230, i32 1303 }, %struct.stb0899_tab { i32 2350, i32 1496 }, %struct.stb0899_tab { i32 2410, i32 1603 }, %struct.stb0899_tab { i32 2460, i32 1698 }, %struct.stb0899_tab { i32 2510, i32 1799 }, %struct.stb0899_tab { i32 2600, i32 1995 }, %struct.stb0899_tab { i32 2650, i32 2113 }, %struct.stb0899_tab { i32 2690, i32 2213 }, %struct.stb0899_tab { i32 2720, i32 2291 }, %struct.stb0899_tab { i32 2760, i32 2399 }, %struct.stb0899_tab { i32 2800, i32 2512 }, %struct.stb0899_tab { i32 2860, i32 2692 }, %struct.stb0899_tab { i32 2930, i32 2917 }, %struct.stb0899_tab { i32 2960, i32 3020 }, %struct.stb0899_tab { i32 3010, i32 3199 }, %struct.stb0899_tab { i32 3040, i32 3311 }, %struct.stb0899_tab { i32 3060, i32 3388 }, %struct.stb0899_tab { i32 3120, i32 3631 }, %struct.stb0899_tab { i32 3190, i32 3936 }, %struct.stb0899_tab { i32 3400, i32 5012 }, %struct.stb0899_tab { i32 3610, i32 6383 }, %struct.stb0899_tab { i32 3800, i32 7943 }, %struct.stb0899_tab { i32 4210, i32 12735 }, %struct.stb0899_tab { i32 4500, i32 17783 }, %struct.stb0899_tab { i32 4690, i32 22131 }, %struct.stb0899_tab { i32 4810, i32 25410 }], [72 x i8] zeroinitializer }, align 32
@stb0899_est_tab = internal constant { [37 x %struct.stb0899_tab], [88 x i8] } { [37 x %struct.stb0899_tab] [%struct.stb0899_tab zeroinitializer, %struct.stb0899_tab { i32 0, i32 1 }, %struct.stb0899_tab { i32 301, i32 2 }, %struct.stb0899_tab { i32 1204, i32 16 }, %struct.stb0899_tab { i32 1806, i32 64 }, %struct.stb0899_tab { i32 2408, i32 256 }, %struct.stb0899_tab { i32 2709, i32 512 }, %struct.stb0899_tab { i32 3010, i32 1023 }, %struct.stb0899_tab { i32 3311, i32 2046 }, %struct.stb0899_tab { i32 3612, i32 4093 }, %struct.stb0899_tab { i32 3823, i32 6653 }, %struct.stb0899_tab { i32 3913, i32 8185 }, %struct.stb0899_tab { i32 4010, i32 10233 }, %struct.stb0899_tab { i32 4107, i32 12794 }, %struct.stb0899_tab { i32 4214, i32 16368 }, %struct.stb0899_tab { i32 4266, i32 18450 }, %struct.stb0899_tab { i32 4311, i32 20464 }, %struct.stb0899_tab { i32 4353, i32 22542 }, %struct.stb0899_tab { i32 4391, i32 24604 }, %struct.stb0899_tab { i32 4425, i32 26607 }, %struct.stb0899_tab { i32 4457, i32 28642 }, %struct.stb0899_tab { i32 4487, i32 30690 }, %struct.stb0899_tab { i32 4515, i32 32734 }, %struct.stb0899_tab { i32 4612, i32 40926 }, %struct.stb0899_tab { i32 4692, i32 49204 }, %struct.stb0899_tab { i32 4816, i32 65464 }, %struct.stb0899_tab { i32 4913, i32 81846 }, %struct.stb0899_tab { i32 4993, i32 98401 }, %struct.stb0899_tab { i32 5060, i32 114815 }, %struct.stb0899_tab { i32 5118, i32 131220 }, %struct.stb0899_tab { i32 5200, i32 158489 }, %struct.stb0899_tab { i32 5300, i32 199526 }, %struct.stb0899_tab { i32 5400, i32 251189 }, %struct.stb0899_tab { i32 5500, i32 316228 }, %struct.stb0899_tab { i32 5600, i32 398107 }, %struct.stb0899_tab { i32 5720, i32 524807 }, %struct.stb0899_tab { i32 5721, i32 526017 }], [88 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @.str.381, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: Es/N0 quant = %d (%d) estimate = %u (%d), C/N = %d * 0.1 dBm\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.393 = internal global ptr @stb0899_read_snr._entry.391, section ".printk_index", align 4
@stb0899_read_snr._entry.394 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.395, ptr @.str.381, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015%s: Es/N0 quant = %d (%d) estimate = %u (%d), C/N = %d * 0.1 dBm\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.396 = internal global ptr @stb0899_read_snr._entry.394, section ".printk_index", align 4
@stb0899_read_snr._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.398, ptr @.str.381, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s: Es/N0 quant = %d (%d) estimate = %u (%d), C/N = %d * 0.1 dBm\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.399 = internal global ptr @stb0899_read_snr._entry.397, section ".printk_index", align 4
@stb0899_read_snr._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.401, ptr @.str.381, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s: Es/N0 quant = %d (%d) estimate = %u (%d), C/N = %d * 0.1 dBm\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.402 = internal global ptr @stb0899_read_snr._entry.400, section ".printk_index", align 4
@stb0899_read_snr._entry.403 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.381, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.404 = internal global ptr @stb0899_read_snr._entry.403, section ".printk_index", align 4
@stb0899_read_snr._entry.405 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.381, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.406 = internal global ptr @stb0899_read_snr._entry.405, section ".printk_index", align 4
@stb0899_read_snr._entry.407 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.381, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.408 = internal global ptr @stb0899_read_snr._entry.407, section ".printk_index", align 4
@stb0899_read_snr._entry.409 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.381, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_read_snr._entry_ptr.410 = internal global ptr @stb0899_read_snr._entry.409, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stb0899_wait_diseqc_fifo_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.411, ptr @.str.412, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: timed out !!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stb0899_wait_diseqc_fifo_empty\00", [33 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_fifo_empty._entry_ptr = internal global ptr @stb0899_wait_diseqc_fifo_empty._entry, section ".printk_index", align 4
@stb0899_wait_diseqc_fifo_empty._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.412, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\015%s: timed out !!\0A\00", [44 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_fifo_empty._entry_ptr.415 = internal global ptr @stb0899_wait_diseqc_fifo_empty._entry.413, section ".printk_index", align 4
@stb0899_wait_diseqc_fifo_empty._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.412, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: timed out !!\0A\00", [44 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_fifo_empty._entry_ptr.418 = internal global ptr @stb0899_wait_diseqc_fifo_empty._entry.416, section ".printk_index", align 4
@stb0899_wait_diseqc_fifo_empty._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.412, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: timed out !!\0A\00", [44 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_fifo_empty._entry_ptr.421 = internal global ptr @stb0899_wait_diseqc_fifo_empty._entry.419, section ".printk_index", align 4
@stb0899_wait_diseqc_rxidle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.422, ptr @.str.423, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: timed out!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stb0899_wait_diseqc_rxidle\00", [37 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_rxidle._entry_ptr = internal global ptr @stb0899_wait_diseqc_rxidle._entry, section ".printk_index", align 4
@stb0899_wait_diseqc_rxidle._entry.424 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.423, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\015%s: timed out!!\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_rxidle._entry_ptr.426 = internal global ptr @stb0899_wait_diseqc_rxidle._entry.424, section ".printk_index", align 4
@stb0899_wait_diseqc_rxidle._entry.427 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.428, ptr @.str.423, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: timed out!!\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_rxidle._entry_ptr.429 = internal global ptr @stb0899_wait_diseqc_rxidle._entry.427, section ".printk_index", align 4
@stb0899_wait_diseqc_rxidle._entry.430 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.431, ptr @.str.423, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: timed out!!\0A\00", [45 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_rxidle._entry_ptr.432 = internal global ptr @stb0899_wait_diseqc_rxidle._entry.430, section ".printk_index", align 4
@stb0899_wait_diseqc_txidle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.422, ptr @.str.433, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stb0899_wait_diseqc_txidle\00", [37 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_txidle._entry_ptr = internal global ptr @stb0899_wait_diseqc_txidle._entry, section ".printk_index", align 4
@stb0899_wait_diseqc_txidle._entry.434 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.433, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_txidle._entry_ptr.435 = internal global ptr @stb0899_wait_diseqc_txidle._entry.434, section ".printk_index", align 4
@stb0899_wait_diseqc_txidle._entry.436 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.428, ptr @.str.433, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_txidle._entry_ptr.437 = internal global ptr @stb0899_wait_diseqc_txidle._entry.436, section ".printk_index", align 4
@stb0899_wait_diseqc_txidle._entry.438 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.431, ptr @.str.433, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_wait_diseqc_txidle._entry_ptr.439 = internal global ptr @stb0899_wait_diseqc_txidle._entry.438, section ".printk_index", align 4
@stb0899_search._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.440, ptr @.str.441, ptr @.str.2, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: delivery system=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb0899_search\00", [17 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr = internal global ptr @stb0899_search._entry, section ".printk_index", align 4
@stb0899_search._entry.442 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.443, ptr @.str.441, ptr @.str.2, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015%s: delivery system=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.444 = internal global ptr @stb0899_search._entry.442, section ".printk_index", align 4
@stb0899_search._entry.445 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.446, ptr @.str.441, ptr @.str.2, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: delivery system=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.447 = internal global ptr @stb0899_search._entry.445, section ".printk_index", align 4
@stb0899_search._entry.448 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.449, ptr @.str.441, ptr @.str.2, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: delivery system=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.450 = internal global ptr @stb0899_search._entry.448, section ".printk_index", align 4
@stb0899_search._entry.451 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.452, ptr @.str.441, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Frequency=%d, Srate=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.453 = internal global ptr @stb0899_search._entry.451, section ".printk_index", align 4
@stb0899_search._entry.454 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.455, ptr @.str.441, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: Frequency=%d, Srate=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.456 = internal global ptr @stb0899_search._entry.454, section ".printk_index", align 4
@stb0899_search._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.458, ptr @.str.441, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Frequency=%d, Srate=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.459 = internal global ptr @stb0899_search._entry.457, section ".printk_index", align 4
@stb0899_search._entry.460 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.461, ptr @.str.441, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.461 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Frequency=%d, Srate=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.462 = internal global ptr @stb0899_search._entry.460, section ".printk_index", align 4
@stb0899_search._entry.463 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.464, ptr @.str.441, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Parameters IN RANGE\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.465 = internal global ptr @stb0899_search._entry.463, section ".printk_index", align 4
@stb0899_search._entry.466 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.467, ptr @.str.441, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: Parameters IN RANGE\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.468 = internal global ptr @stb0899_search._entry.466, section ".printk_index", align 4
@stb0899_search._entry.469 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.470, ptr @.str.441, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Parameters IN RANGE\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.471 = internal global ptr @stb0899_search._entry.469, section ".printk_index", align 4
@stb0899_search._entry.472 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.473, ptr @.str.441, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Parameters IN RANGE\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.474 = internal global ptr @stb0899_search._entry.472, section ".printk_index", align 4
@stb0899_search._entry.475 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.476, ptr @.str.441, ptr @.str.2, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: DVB-S delivery system\0A\00", [35 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.477 = internal global ptr @stb0899_search._entry.475, section ".printk_index", align 4
@stb0899_search._entry.478 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.479, ptr @.str.441, ptr @.str.2, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s: DVB-S delivery system\0A\00", [35 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.480 = internal global ptr @stb0899_search._entry.478, section ".printk_index", align 4
@stb0899_search._entry.481 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.482, ptr @.str.441, ptr @.str.2, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: DVB-S delivery system\0A\00", [35 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.483 = internal global ptr @stb0899_search._entry.481, section ".printk_index", align 4
@stb0899_search._entry.484 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.485, ptr @.str.441, ptr @.str.2, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: DVB-S delivery system\0A\00", [35 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.486 = internal global ptr @stb0899_search._entry.484, section ".printk_index", align 4
@stb0899_search._entry.487 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.488, ptr @.str.441, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: running DVB-S search algo ..\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.489 = internal global ptr @stb0899_search._entry.487, section ".printk_index", align 4
@stb0899_search._entry.490 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.491, ptr @.str.441, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s: running DVB-S search algo ..\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.492 = internal global ptr @stb0899_search._entry.490, section ".printk_index", align 4
@stb0899_search._entry.493 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.494, ptr @.str.441, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.494 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: running DVB-S search algo ..\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.495 = internal global ptr @stb0899_search._entry.493, section ".printk_index", align 4
@stb0899_search._entry.496 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.497, ptr @.str.441, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.497 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: running DVB-S search algo ..\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.498 = internal global ptr @stb0899_search._entry.496, section ".printk_index", align 4
@stb0899_search._entry.499 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.500, ptr @.str.441, ptr @.str.2, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: -------------------------------------> DVB-S LOCK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.501 = internal global ptr @stb0899_search._entry.499, section ".printk_index", align 4
@stb0899_search._entry.502 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.503, ptr @.str.441, ptr @.str.2, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.503 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015%s: -------------------------------------> DVB-S LOCK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.504 = internal global ptr @stb0899_search._entry.502, section ".printk_index", align 4
@stb0899_search._entry.505 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.506, ptr @.str.441, ptr @.str.2, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.506 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: -------------------------------------> DVB-S LOCK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.507 = internal global ptr @stb0899_search._entry.505, section ".printk_index", align 4
@stb0899_search._entry.508 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.509, ptr @.str.441, ptr @.str.2, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.509 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: -------------------------------------> DVB-S LOCK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.510 = internal global ptr @stb0899_search._entry.508, section ".printk_index", align 4
@stb0899_search._entry.511 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.512, ptr @.str.441, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: running DVB-S2 search algo ..\0A\00", [59 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.513 = internal global ptr @stb0899_search._entry.511, section ".printk_index", align 4
@stb0899_search._entry.514 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.515, ptr @.str.441, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.515 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015%s: running DVB-S2 search algo ..\0A\00", [59 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.516 = internal global ptr @stb0899_search._entry.514, section ".printk_index", align 4
@stb0899_search._entry.517 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.518, ptr @.str.441, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: running DVB-S2 search algo ..\0A\00", [59 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.519 = internal global ptr @stb0899_search._entry.517, section ".printk_index", align 4
@stb0899_search._entry.520 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.521, ptr @.str.441, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.521 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: running DVB-S2 search algo ..\0A\00", [59 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.522 = internal global ptr @stb0899_search._entry.520, section ".printk_index", align 4
@stb0899_search._entry.523 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.524, ptr @.str.441, ptr @.str.2, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.524 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: -------------------------------------> DVB-S2 LOCK !\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.525 = internal global ptr @stb0899_search._entry.523, section ".printk_index", align 4
@stb0899_search._entry.526 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.527, ptr @.str.441, ptr @.str.2, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.527 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015%s: -------------------------------------> DVB-S2 LOCK !\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.528 = internal global ptr @stb0899_search._entry.526, section ".printk_index", align 4
@stb0899_search._entry.529 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.530, ptr @.str.441, ptr @.str.2, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: -------------------------------------> DVB-S2 LOCK !\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.531 = internal global ptr @stb0899_search._entry.529, section ".printk_index", align 4
@stb0899_search._entry.532 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.533, ptr @.str.441, ptr @.str.2, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: -------------------------------------> DVB-S2 LOCK !\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.534 = internal global ptr @stb0899_search._entry.532, section ".printk_index", align 4
@stb0899_search._entry.535 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.441, ptr @.str.2, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.536 = internal global ptr @stb0899_search._entry.535, section ".printk_index", align 4
@stb0899_search._entry.537 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.441, ptr @.str.2, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.538 = internal global ptr @stb0899_search._entry.537, section ".printk_index", align 4
@stb0899_search._entry.539 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.441, ptr @.str.2, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.540 = internal global ptr @stb0899_search._entry.539, section ".printk_index", align 4
@stb0899_search._entry.541 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.441, ptr @.str.2, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_search._entry_ptr.542 = internal global ptr @stb0899_search._entry.541, section ".printk_index", align 4
@stb0899_set_delivery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.543, ptr @.str.544, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.543 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Delivery System -- DVB-S\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.544 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stb0899_set_delivery\00", [43 x i8] zeroinitializer }, align 32
@stb0899_set_delivery._entry_ptr = internal global ptr @stb0899_set_delivery._entry, section ".printk_index", align 4
@stb0899_set_delivery._entry.545 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.546, ptr @.str.544, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.546 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015%s: Delivery System -- DVB-S\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_set_delivery._entry_ptr.547 = internal global ptr @stb0899_set_delivery._entry.545, section ".printk_index", align 4
@stb0899_set_delivery._entry.548 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.549, ptr @.str.544, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.549 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Delivery System -- DVB-S\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_set_delivery._entry_ptr.550 = internal global ptr @stb0899_set_delivery._entry.548, section ".printk_index", align 4
@stb0899_set_delivery._entry.551 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.552, ptr @.str.544, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.552 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Delivery System -- DVB-S\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_set_delivery._entry_ptr.553 = internal global ptr @stb0899_set_delivery._entry.551, section ".printk_index", align 4
@stb0899_set_delivery._entry.554 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.544, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_set_delivery._entry_ptr.555 = internal global ptr @stb0899_set_delivery._entry.554, section ".printk_index", align 4
@stb0899_set_delivery._entry.556 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.544, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_set_delivery._entry_ptr.557 = internal global ptr @stb0899_set_delivery._entry.556, section ".printk_index", align 4
@stb0899_set_delivery._entry.558 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.544, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_set_delivery._entry_ptr.559 = internal global ptr @stb0899_set_delivery._entry.558, section ".printk_index", align 4
@stb0899_set_delivery._entry.560 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.544, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb0899_set_delivery._entry_ptr.561 = internal global ptr @stb0899_set_delivery._entry.560, section ".printk_index", align 4
@stb0899_set_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.562, ptr @.str.563, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.562 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: state->config=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.563 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb0899_set_mclk\00", [47 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr = internal global ptr @stb0899_set_mclk._entry, section ".printk_index", align 4
@stb0899_set_mclk._entry.564 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.565, ptr @.str.563, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.565 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015%s: state->config=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.566 = internal global ptr @stb0899_set_mclk._entry.564, section ".printk_index", align 4
@stb0899_set_mclk._entry.567 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.568, ptr @.str.563, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.568 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: state->config=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.569 = internal global ptr @stb0899_set_mclk._entry.567, section ".printk_index", align 4
@stb0899_set_mclk._entry.570 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.571, ptr @.str.563, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.571 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: state->config=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.572 = internal global ptr @stb0899_set_mclk._entry.570, section ".printk_index", align 4
@stb0899_set_mclk._entry.573 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.574, ptr @.str.563, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.574 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s: mdiv=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.575 = internal global ptr @stb0899_set_mclk._entry.573, section ".printk_index", align 4
@stb0899_set_mclk._entry.576 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.577, ptr @.str.563, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.577 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\015%s: mdiv=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.578 = internal global ptr @stb0899_set_mclk._entry.576, section ".printk_index", align 4
@stb0899_set_mclk._entry.579 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.580, ptr @.str.563, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.580 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: mdiv=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.581 = internal global ptr @stb0899_set_mclk._entry.579, section ".printk_index", align 4
@stb0899_set_mclk._entry.582 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.583, ptr @.str.563, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.583 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: mdiv=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.584 = internal global ptr @stb0899_set_mclk._entry.582, section ".printk_index", align 4
@stb0899_set_mclk._entry.585 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.586, ptr @.str.563, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.586 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: MasterCLOCK=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.587 = internal global ptr @stb0899_set_mclk._entry.585, section ".printk_index", align 4
@stb0899_set_mclk._entry.588 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.589, ptr @.str.563, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.589 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015%s: MasterCLOCK=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.590 = internal global ptr @stb0899_set_mclk._entry.588, section ".printk_index", align 4
@stb0899_set_mclk._entry.591 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.592, ptr @.str.563, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.592 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: MasterCLOCK=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.593 = internal global ptr @stb0899_set_mclk._entry.591, section ".printk_index", align 4
@stb0899_set_mclk._entry.594 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.595, ptr @.str.563, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.595 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: MasterCLOCK=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_set_mclk._entry_ptr.596 = internal global ptr @stb0899_set_mclk._entry.594, section ".printk_index", align 4
@stb0899_get_dev_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.597, ptr @.str.598, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.597 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: ID reg=[0x%02x]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.598 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stb0899_get_dev_id\00", [45 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr = internal global ptr @stb0899_get_dev_id._entry, section ".printk_index", align 4
@stb0899_get_dev_id._entry.599 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.600, ptr @.str.598, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.600 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: ID reg=[0x%02x]\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.601 = internal global ptr @stb0899_get_dev_id._entry.599, section ".printk_index", align 4
@stb0899_get_dev_id._entry.602 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.603, ptr @.str.598, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.603 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: ID reg=[0x%02x]\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.604 = internal global ptr @stb0899_get_dev_id._entry.602, section ".printk_index", align 4
@stb0899_get_dev_id._entry.605 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.606, ptr @.str.598, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.606 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: ID reg=[0x%02x]\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.607 = internal global ptr @stb0899_get_dev_id._entry.605, section ".printk_index", align 4
@stb0899_get_dev_id._entry.608 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.609, ptr @.str.598, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.609 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Device ID=[%d], Release=[%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.610 = internal global ptr @stb0899_get_dev_id._entry.608, section ".printk_index", align 4
@stb0899_get_dev_id._entry.611 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.612, ptr @.str.598, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.612 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s: Device ID=[%d], Release=[%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.613 = internal global ptr @stb0899_get_dev_id._entry.611, section ".printk_index", align 4
@stb0899_get_dev_id._entry.614 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.615, ptr @.str.598, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.615 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: Device ID=[%d], Release=[%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.616 = internal global ptr @stb0899_get_dev_id._entry.614, section ".printk_index", align 4
@stb0899_get_dev_id._entry.617 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.618, ptr @.str.598, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.618 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Device ID=[%d], Release=[%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.619 = internal global ptr @stb0899_get_dev_id._entry.617, section ".printk_index", align 4
@stb0899_get_dev_id._entry.620 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.621, ptr @.str.598, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.621 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Demodulator Core ID=[%s], Version=[%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.622 = internal global ptr @stb0899_get_dev_id._entry.620, section ".printk_index", align 4
@stb0899_get_dev_id._entry.623 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.624, ptr @.str.598, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.624 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015%s: Demodulator Core ID=[%s], Version=[%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.625 = internal global ptr @stb0899_get_dev_id._entry.623, section ".printk_index", align 4
@stb0899_get_dev_id._entry.626 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.627, ptr @.str.598, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.627 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Demodulator Core ID=[%s], Version=[%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.628 = internal global ptr @stb0899_get_dev_id._entry.626, section ".printk_index", align 4
@stb0899_get_dev_id._entry.629 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.630, ptr @.str.598, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.630 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Demodulator Core ID=[%s], Version=[%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.631 = internal global ptr @stb0899_get_dev_id._entry.629, section ".printk_index", align 4
@stb0899_get_dev_id._entry.632 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.633, ptr @.str.598, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.633 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: couldn't find a STB 0899\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.634 = internal global ptr @stb0899_get_dev_id._entry.632, section ".printk_index", align 4
@stb0899_get_dev_id._entry.635 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.636, ptr @.str.598, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.636 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015%s: couldn't find a STB 0899\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.637 = internal global ptr @stb0899_get_dev_id._entry.635, section ".printk_index", align 4
@stb0899_get_dev_id._entry.638 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.639, ptr @.str.598, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.639 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: couldn't find a STB 0899\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.640 = internal global ptr @stb0899_get_dev_id._entry.638, section ".printk_index", align 4
@stb0899_get_dev_id._entry.641 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.642, ptr @.str.598, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.642 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: couldn't find a STB 0899\0A\00", [32 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.643 = internal global ptr @stb0899_get_dev_id._entry.641, section ".printk_index", align 4
@stb0899_get_dev_id._entry.644 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.645, ptr @.str.598, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.645 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: FEC Core ID=[%s], Version=[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.646 = internal global ptr @stb0899_get_dev_id._entry.644, section ".printk_index", align 4
@stb0899_get_dev_id._entry.647 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.648, ptr @.str.598, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.648 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015%s: FEC Core ID=[%s], Version=[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.649 = internal global ptr @stb0899_get_dev_id._entry.647, section ".printk_index", align 4
@stb0899_get_dev_id._entry.650 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.651, ptr @.str.598, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.651 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: FEC Core ID=[%s], Version=[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.652 = internal global ptr @stb0899_get_dev_id._entry.650, section ".printk_index", align 4
@stb0899_get_dev_id._entry.653 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.654, ptr @.str.598, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.654 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: FEC Core ID=[%s], Version=[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_get_dev_id._entry_ptr.655 = internal global ptr @stb0899_get_dev_id._entry.653, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 62207, i64 63231]
@__sancov_gen_cov_switch_values.656 = internal global [4 x i64] [i64 2, i64 16, i64 61952, i64 62976]
@__sancov_gen_cov_switch_values.657 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294966784]
@__sancov_gen_cov_switch_values.658 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294966784]
@__sancov_gen_cov_switch_values.659 = internal global [4 x i64] [i64 2, i64 32, i64 62207, i64 63231]
@__sancov_gen_cov_switch_values.660 = internal global [4 x i64] [i64 2, i64 16, i64 61952, i64 62976]
@__sancov_gen_cov_switch_values.661 = internal global [4 x i64] [i64 2, i64 16, i64 61952, i64 62976]
@__sancov_gen_cov_switch_values.662 = internal global [4 x i64] [i64 2, i64 32, i64 62207, i64 63231]
@__sancov_gen_cov_switch_values.663 = internal global [4 x i64] [i64 2, i64 16, i64 61952, i64 62976]
@__sancov_gen_cov_switch_values.664 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294966784]
@__sancov_gen_cov_switch_values.665 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.666 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.667 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.668 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.669 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.670 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.671 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.672 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.673 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.674 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@___asan_gen_.675 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 27, i32 21 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 321, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 343, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 351, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 358, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 415, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 421, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 428, i32 4 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 463, i32 4 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 476, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 496, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 506, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 520, i32 4 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1232, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1237, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1244, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant [12 x i8] c"stb0899_ops\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1571, i32 38 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1630, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1634, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 237, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 244, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 605, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 883, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 886, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 890, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 898, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 903, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 911, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 545, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 851, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1559, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1059, i32 3 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1063, i32 5 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1068, i32 6 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1077, i32 3 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1082, i32 5 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1088, i32 6 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1094, i32 6 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1099, i32 6 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1108, i32 3 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1157, i32 3 }
@___asan_gen_.1443 = private unnamed_addr constant [19 x i8] c"stb0899_dvbsrf_tab\00", align 1
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 61, i32 33 }
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 968, i32 5 }
@___asan_gen_.1473 = private unnamed_addr constant [20 x i8] c"stb0899_dvbs2rf_tab\00", align 1
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 102, i32 33 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 980, i32 4 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 985, i32 3 }
@___asan_gen_.1512 = private unnamed_addr constant [15 x i8] c"stb0899_cn_tab\00", align 1
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 31, i32 33 }
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1013, i32 5 }
@___asan_gen_.1542 = private unnamed_addr constant [18 x i8] c"stb0899_quant_tab\00", align 1
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 130, i32 27 }
@___asan_gen_.1545 = private unnamed_addr constant [16 x i8] c"stb0899_est_tab\00", align 1
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 173, i32 27 }
@___asan_gen_.1571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1037, i32 4 }
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1042, i32 3 }
@___asan_gen_.1610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 678, i32 4 }
@___asan_gen_.1637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 720, i32 4 }
@___asan_gen_.1652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 769, i32 4 }
@___asan_gen_.1679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1428, i32 2 }
@___asan_gen_.1703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1431, i32 2 }
@___asan_gen_.1727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1434, i32 3 }
@___asan_gen_.1751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1455, i32 4 }
@___asan_gen_.1775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1483, i32 4 }
@___asan_gen_.1799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1486, i32 5 }
@___asan_gen_.1823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1527, i32 4 }
@___asan_gen_.1847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1530, i32 5 }
@___asan_gen_.1859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1545, i32 4 }
@___asan_gen_.1886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1300, i32 3 }
@___asan_gen_.1898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1383, i32 3 }
@___asan_gen_.1925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 561, i32 2 }
@___asan_gen_.1949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 563, i32 2 }
@___asan_gen_.1973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 568, i32 2 }
@___asan_gen_.2000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1267, i32 2 }
@___asan_gen_.2024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1271, i32 2 }
@___asan_gen_.2048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1277, i32 2 }
@___asan_gen_.2072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1281, i32 3 }
@___asan_gen_.2091 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2094 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2095 = private constant [45 x i8] c"../drivers/media/dvb-frontends/stb0899_drv.c\00", align 1
@___asan_gen_.2096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2095, i32 1285, i32 2 }
@llvm.compiler.used = appending global [717 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_verbose291, ptr @__UNIQUE_ID_verbosetype290, ptr @__ksymtab_stb0899_attach, ptr @__param_verbose, ptr @_stb0899_read_reg._entry, ptr @_stb0899_read_reg._entry.102, ptr @_stb0899_read_reg._entry.105, ptr @_stb0899_read_reg._entry.108, ptr @_stb0899_read_reg._entry.111, ptr @_stb0899_read_reg._entry.114, ptr @_stb0899_read_reg._entry.117, ptr @_stb0899_read_reg._entry.99, ptr @_stb0899_read_reg._entry_ptr, ptr @_stb0899_read_reg._entry_ptr.101, ptr @_stb0899_read_reg._entry_ptr.104, ptr @_stb0899_read_reg._entry_ptr.107, ptr @_stb0899_read_reg._entry_ptr.110, ptr @_stb0899_read_reg._entry_ptr.113, ptr @_stb0899_read_reg._entry_ptr.116, ptr @_stb0899_read_reg._entry_ptr.119, ptr @_stb0899_read_s2reg._entry, ptr @_stb0899_read_s2reg._entry.3, ptr @_stb0899_read_s2reg._entry.6, ptr @_stb0899_read_s2reg._entry.9, ptr @_stb0899_read_s2reg._entry_ptr, ptr @_stb0899_read_s2reg._entry_ptr.11, ptr @_stb0899_read_s2reg._entry_ptr.5, ptr @_stb0899_read_s2reg._entry_ptr.8, ptr @stb0899_attach._entry, ptr @stb0899_attach._entry.94, ptr @stb0899_attach._entry_ptr, ptr @stb0899_attach._entry_ptr.96, ptr @stb0899_get_dev_id._entry, ptr @stb0899_get_dev_id._entry.599, ptr @stb0899_get_dev_id._entry.602, ptr @stb0899_get_dev_id._entry.605, ptr @stb0899_get_dev_id._entry.608, ptr @stb0899_get_dev_id._entry.611, ptr @stb0899_get_dev_id._entry.614, ptr @stb0899_get_dev_id._entry.617, ptr @stb0899_get_dev_id._entry.620, ptr @stb0899_get_dev_id._entry.623, ptr @stb0899_get_dev_id._entry.626, ptr @stb0899_get_dev_id._entry.629, ptr @stb0899_get_dev_id._entry.632, ptr @stb0899_get_dev_id._entry.635, ptr @stb0899_get_dev_id._entry.638, ptr @stb0899_get_dev_id._entry.641, ptr @stb0899_get_dev_id._entry.644, ptr @stb0899_get_dev_id._entry.647, ptr @stb0899_get_dev_id._entry.650, ptr @stb0899_get_dev_id._entry.653, ptr @stb0899_get_dev_id._entry_ptr, ptr @stb0899_get_dev_id._entry_ptr.601, ptr @stb0899_get_dev_id._entry_ptr.604, ptr @stb0899_get_dev_id._entry_ptr.607, ptr @stb0899_get_dev_id._entry_ptr.610, ptr @stb0899_get_dev_id._entry_ptr.613, ptr @stb0899_get_dev_id._entry_ptr.616, ptr @stb0899_get_dev_id._entry_ptr.619, ptr @stb0899_get_dev_id._entry_ptr.622, ptr @stb0899_get_dev_id._entry_ptr.625, ptr @stb0899_get_dev_id._entry_ptr.628, ptr @stb0899_get_dev_id._entry_ptr.631, ptr @stb0899_get_dev_id._entry_ptr.634, ptr @stb0899_get_dev_id._entry_ptr.637, ptr @stb0899_get_dev_id._entry_ptr.640, ptr @stb0899_get_dev_id._entry_ptr.643, ptr @stb0899_get_dev_id._entry_ptr.646, ptr @stb0899_get_dev_id._entry_ptr.649, ptr @stb0899_get_dev_id._entry_ptr.652, ptr @stb0899_get_dev_id._entry_ptr.655, ptr @stb0899_get_frontend._entry, ptr @stb0899_get_frontend._entry.226, ptr @stb0899_get_frontend._entry.229, ptr @stb0899_get_frontend._entry.232, ptr @stb0899_get_frontend._entry_ptr, ptr @stb0899_get_frontend._entry_ptr.228, ptr @stb0899_get_frontend._entry_ptr.231, ptr @stb0899_get_frontend._entry_ptr.234, ptr @stb0899_get_mclk._entry, ptr @stb0899_get_mclk._entry.204, ptr @stb0899_get_mclk._entry.207, ptr @stb0899_get_mclk._entry.210, ptr @stb0899_get_mclk._entry_ptr, ptr @stb0899_get_mclk._entry_ptr.206, ptr @stb0899_get_mclk._entry_ptr.209, ptr @stb0899_get_mclk._entry_ptr.212, ptr @stb0899_i2c_gate_ctrl._entry, ptr @stb0899_i2c_gate_ctrl._entry.59, ptr @stb0899_i2c_gate_ctrl._entry.62, ptr @stb0899_i2c_gate_ctrl._entry.65, ptr @stb0899_i2c_gate_ctrl._entry.68, ptr @stb0899_i2c_gate_ctrl._entry.71, ptr @stb0899_i2c_gate_ctrl._entry.74, ptr @stb0899_i2c_gate_ctrl._entry.77, ptr @stb0899_i2c_gate_ctrl._entry.80, ptr @stb0899_i2c_gate_ctrl._entry.83, ptr @stb0899_i2c_gate_ctrl._entry.86, ptr @stb0899_i2c_gate_ctrl._entry.89, ptr @stb0899_i2c_gate_ctrl._entry_ptr, ptr @stb0899_i2c_gate_ctrl._entry_ptr.61, ptr @stb0899_i2c_gate_ctrl._entry_ptr.64, ptr @stb0899_i2c_gate_ctrl._entry_ptr.67, ptr @stb0899_i2c_gate_ctrl._entry_ptr.70, ptr @stb0899_i2c_gate_ctrl._entry_ptr.73, ptr @stb0899_i2c_gate_ctrl._entry_ptr.76, ptr @stb0899_i2c_gate_ctrl._entry_ptr.79, ptr @stb0899_i2c_gate_ctrl._entry_ptr.82, ptr @stb0899_i2c_gate_ctrl._entry_ptr.85, ptr @stb0899_i2c_gate_ctrl._entry_ptr.88, ptr @stb0899_i2c_gate_ctrl._entry_ptr.91, ptr @stb0899_init._entry, ptr @stb0899_init._entry.133, ptr @stb0899_init._entry.136, ptr @stb0899_init._entry.139, ptr @stb0899_init._entry.142, ptr @stb0899_init._entry.145, ptr @stb0899_init._entry.148, ptr @stb0899_init._entry.151, ptr @stb0899_init._entry.154, ptr @stb0899_init._entry.157, ptr @stb0899_init._entry.160, ptr @stb0899_init._entry.163, ptr @stb0899_init._entry.166, ptr @stb0899_init._entry.169, ptr @stb0899_init._entry.172, ptr @stb0899_init._entry.175, ptr @stb0899_init._entry.178, ptr @stb0899_init._entry.181, ptr @stb0899_init._entry.184, ptr @stb0899_init._entry.187, ptr @stb0899_init._entry.190, ptr @stb0899_init._entry.193, ptr @stb0899_init._entry.196, ptr @stb0899_init._entry.199, ptr @stb0899_init._entry_ptr, ptr @stb0899_init._entry_ptr.135, ptr @stb0899_init._entry_ptr.138, ptr @stb0899_init._entry_ptr.141, ptr @stb0899_init._entry_ptr.144, ptr @stb0899_init._entry_ptr.147, ptr @stb0899_init._entry_ptr.150, ptr @stb0899_init._entry_ptr.153, ptr @stb0899_init._entry_ptr.156, ptr @stb0899_init._entry_ptr.159, ptr @stb0899_init._entry_ptr.162, ptr @stb0899_init._entry_ptr.165, ptr @stb0899_init._entry_ptr.168, ptr @stb0899_init._entry_ptr.171, ptr @stb0899_init._entry_ptr.174, ptr @stb0899_init._entry_ptr.177, ptr @stb0899_init._entry_ptr.180, ptr @stb0899_init._entry_ptr.183, ptr @stb0899_init._entry_ptr.186, ptr @stb0899_init._entry_ptr.189, ptr @stb0899_init._entry_ptr.192, ptr @stb0899_init._entry_ptr.195, ptr @stb0899_init._entry_ptr.198, ptr @stb0899_init._entry_ptr.201, ptr @stb0899_read_ber._entry, ptr @stb0899_read_ber._entry.343, ptr @stb0899_read_ber._entry.345, ptr @stb0899_read_ber._entry.347, ptr @stb0899_read_ber._entry_ptr, ptr @stb0899_read_ber._entry_ptr.344, ptr @stb0899_read_ber._entry_ptr.346, ptr @stb0899_read_ber._entry_ptr.348, ptr @stb0899_read_regs._entry, ptr @stb0899_read_regs._entry.22, ptr @stb0899_read_regs._entry.25, ptr @stb0899_read_regs._entry.28, ptr @stb0899_read_regs._entry.31, ptr @stb0899_read_regs._entry_ptr, ptr @stb0899_read_regs._entry_ptr.24, ptr @stb0899_read_regs._entry_ptr.27, ptr @stb0899_read_regs._entry_ptr.30, ptr @stb0899_read_regs._entry_ptr.33, ptr @stb0899_read_signal_strength._entry, ptr @stb0899_read_signal_strength._entry.351, ptr @stb0899_read_signal_strength._entry.354, ptr @stb0899_read_signal_strength._entry.357, ptr @stb0899_read_signal_strength._entry.360, ptr @stb0899_read_signal_strength._entry.363, ptr @stb0899_read_signal_strength._entry.366, ptr @stb0899_read_signal_strength._entry.369, ptr @stb0899_read_signal_strength._entry.372, ptr @stb0899_read_signal_strength._entry.374, ptr @stb0899_read_signal_strength._entry.376, ptr @stb0899_read_signal_strength._entry.378, ptr @stb0899_read_signal_strength._entry_ptr, ptr @stb0899_read_signal_strength._entry_ptr.353, ptr @stb0899_read_signal_strength._entry_ptr.356, ptr @stb0899_read_signal_strength._entry_ptr.359, ptr @stb0899_read_signal_strength._entry_ptr.362, ptr @stb0899_read_signal_strength._entry_ptr.365, ptr @stb0899_read_signal_strength._entry_ptr.368, ptr @stb0899_read_signal_strength._entry_ptr.371, ptr @stb0899_read_signal_strength._entry_ptr.373, ptr @stb0899_read_signal_strength._entry_ptr.375, ptr @stb0899_read_signal_strength._entry_ptr.377, ptr @stb0899_read_signal_strength._entry_ptr.379, ptr @stb0899_read_snr._entry, ptr @stb0899_read_snr._entry.382, ptr @stb0899_read_snr._entry.385, ptr @stb0899_read_snr._entry.388, ptr @stb0899_read_snr._entry.391, ptr @stb0899_read_snr._entry.394, ptr @stb0899_read_snr._entry.397, ptr @stb0899_read_snr._entry.400, ptr @stb0899_read_snr._entry.403, ptr @stb0899_read_snr._entry.405, ptr @stb0899_read_snr._entry.407, ptr @stb0899_read_snr._entry.409, ptr @stb0899_read_snr._entry_ptr, ptr @stb0899_read_snr._entry_ptr.384, ptr @stb0899_read_snr._entry_ptr.387, ptr @stb0899_read_snr._entry_ptr.390, ptr @stb0899_read_snr._entry_ptr.393, ptr @stb0899_read_snr._entry_ptr.396, ptr @stb0899_read_snr._entry_ptr.399, ptr @stb0899_read_snr._entry_ptr.402, ptr @stb0899_read_snr._entry_ptr.404, ptr @stb0899_read_snr._entry_ptr.406, ptr @stb0899_read_snr._entry_ptr.408, ptr @stb0899_read_snr._entry_ptr.410, ptr @stb0899_read_status._entry, ptr @stb0899_read_status._entry.237, ptr @stb0899_read_status._entry.240, ptr @stb0899_read_status._entry.243, ptr @stb0899_read_status._entry.246, ptr @stb0899_read_status._entry.249, ptr @stb0899_read_status._entry.252, ptr @stb0899_read_status._entry.255, ptr @stb0899_read_status._entry.258, ptr @stb0899_read_status._entry.261, ptr @stb0899_read_status._entry.264, ptr @stb0899_read_status._entry.267, ptr @stb0899_read_status._entry.270, ptr @stb0899_read_status._entry.273, ptr @stb0899_read_status._entry.276, ptr @stb0899_read_status._entry.279, ptr @stb0899_read_status._entry.282, ptr @stb0899_read_status._entry.285, ptr @stb0899_read_status._entry.288, ptr @stb0899_read_status._entry.291, ptr @stb0899_read_status._entry.294, ptr @stb0899_read_status._entry.297, ptr @stb0899_read_status._entry.300, ptr @stb0899_read_status._entry.303, ptr @stb0899_read_status._entry.306, ptr @stb0899_read_status._entry.309, ptr @stb0899_read_status._entry.312, ptr @stb0899_read_status._entry.315, ptr @stb0899_read_status._entry.318, ptr @stb0899_read_status._entry.321, ptr @stb0899_read_status._entry.324, ptr @stb0899_read_status._entry.327, ptr @stb0899_read_status._entry.330, ptr @stb0899_read_status._entry.333, ptr @stb0899_read_status._entry.336, ptr @stb0899_read_status._entry.339, ptr @stb0899_read_status._entry_ptr, ptr @stb0899_read_status._entry_ptr.239, ptr @stb0899_read_status._entry_ptr.242, ptr @stb0899_read_status._entry_ptr.245, ptr @stb0899_read_status._entry_ptr.248, ptr @stb0899_read_status._entry_ptr.251, ptr @stb0899_read_status._entry_ptr.254, ptr @stb0899_read_status._entry_ptr.257, ptr @stb0899_read_status._entry_ptr.260, ptr @stb0899_read_status._entry_ptr.263, ptr @stb0899_read_status._entry_ptr.266, ptr @stb0899_read_status._entry_ptr.269, ptr @stb0899_read_status._entry_ptr.272, ptr @stb0899_read_status._entry_ptr.275, ptr @stb0899_read_status._entry_ptr.278, ptr @stb0899_read_status._entry_ptr.281, ptr @stb0899_read_status._entry_ptr.284, ptr @stb0899_read_status._entry_ptr.287, ptr @stb0899_read_status._entry_ptr.290, ptr @stb0899_read_status._entry_ptr.293, ptr @stb0899_read_status._entry_ptr.296, ptr @stb0899_read_status._entry_ptr.299, ptr @stb0899_read_status._entry_ptr.302, ptr @stb0899_read_status._entry_ptr.305, ptr @stb0899_read_status._entry_ptr.308, ptr @stb0899_read_status._entry_ptr.311, ptr @stb0899_read_status._entry_ptr.314, ptr @stb0899_read_status._entry_ptr.317, ptr @stb0899_read_status._entry_ptr.320, ptr @stb0899_read_status._entry_ptr.323, ptr @stb0899_read_status._entry_ptr.326, ptr @stb0899_read_status._entry_ptr.329, ptr @stb0899_read_status._entry_ptr.332, ptr @stb0899_read_status._entry_ptr.335, ptr @stb0899_read_status._entry_ptr.338, ptr @stb0899_read_status._entry_ptr.341, ptr @stb0899_release._entry, ptr @stb0899_release._entry.122, ptr @stb0899_release._entry.125, ptr @stb0899_release._entry.128, ptr @stb0899_release._entry_ptr, ptr @stb0899_release._entry_ptr.124, ptr @stb0899_release._entry_ptr.127, ptr @stb0899_release._entry_ptr.130, ptr @stb0899_search._entry, ptr @stb0899_search._entry.442, ptr @stb0899_search._entry.445, ptr @stb0899_search._entry.448, ptr @stb0899_search._entry.451, ptr @stb0899_search._entry.454, ptr @stb0899_search._entry.457, ptr @stb0899_search._entry.460, ptr @stb0899_search._entry.463, ptr @stb0899_search._entry.466, ptr @stb0899_search._entry.469, ptr @stb0899_search._entry.472, ptr @stb0899_search._entry.475, ptr @stb0899_search._entry.478, ptr @stb0899_search._entry.481, ptr @stb0899_search._entry.484, ptr @stb0899_search._entry.487, ptr @stb0899_search._entry.490, ptr @stb0899_search._entry.493, ptr @stb0899_search._entry.496, ptr @stb0899_search._entry.499, ptr @stb0899_search._entry.502, ptr @stb0899_search._entry.505, ptr @stb0899_search._entry.508, ptr @stb0899_search._entry.511, ptr @stb0899_search._entry.514, ptr @stb0899_search._entry.517, ptr @stb0899_search._entry.520, ptr @stb0899_search._entry.523, ptr @stb0899_search._entry.526, ptr @stb0899_search._entry.529, ptr @stb0899_search._entry.532, ptr @stb0899_search._entry.535, ptr @stb0899_search._entry.537, ptr @stb0899_search._entry.539, ptr @stb0899_search._entry.541, ptr @stb0899_search._entry_ptr, ptr @stb0899_search._entry_ptr.444, ptr @stb0899_search._entry_ptr.447, ptr @stb0899_search._entry_ptr.450, ptr @stb0899_search._entry_ptr.453, ptr @stb0899_search._entry_ptr.456, ptr @stb0899_search._entry_ptr.459, ptr @stb0899_search._entry_ptr.462, ptr @stb0899_search._entry_ptr.465, ptr @stb0899_search._entry_ptr.468, ptr @stb0899_search._entry_ptr.471, ptr @stb0899_search._entry_ptr.474, ptr @stb0899_search._entry_ptr.477, ptr @stb0899_search._entry_ptr.480, ptr @stb0899_search._entry_ptr.483, ptr @stb0899_search._entry_ptr.486, ptr @stb0899_search._entry_ptr.489, ptr @stb0899_search._entry_ptr.492, ptr @stb0899_search._entry_ptr.495, ptr @stb0899_search._entry_ptr.498, ptr @stb0899_search._entry_ptr.501, ptr @stb0899_search._entry_ptr.504, ptr @stb0899_search._entry_ptr.507, ptr @stb0899_search._entry_ptr.510, ptr @stb0899_search._entry_ptr.513, ptr @stb0899_search._entry_ptr.516, ptr @stb0899_search._entry_ptr.519, ptr @stb0899_search._entry_ptr.522, ptr @stb0899_search._entry_ptr.525, ptr @stb0899_search._entry_ptr.528, ptr @stb0899_search._entry_ptr.531, ptr @stb0899_search._entry_ptr.534, ptr @stb0899_search._entry_ptr.536, ptr @stb0899_search._entry_ptr.538, ptr @stb0899_search._entry_ptr.540, ptr @stb0899_search._entry_ptr.542, ptr @stb0899_set_delivery._entry, ptr @stb0899_set_delivery._entry.545, ptr @stb0899_set_delivery._entry.548, ptr @stb0899_set_delivery._entry.551, ptr @stb0899_set_delivery._entry.554, ptr @stb0899_set_delivery._entry.556, ptr @stb0899_set_delivery._entry.558, ptr @stb0899_set_delivery._entry.560, ptr @stb0899_set_delivery._entry_ptr, ptr @stb0899_set_delivery._entry_ptr.547, ptr @stb0899_set_delivery._entry_ptr.550, ptr @stb0899_set_delivery._entry_ptr.553, ptr @stb0899_set_delivery._entry_ptr.555, ptr @stb0899_set_delivery._entry_ptr.557, ptr @stb0899_set_delivery._entry_ptr.559, ptr @stb0899_set_delivery._entry_ptr.561, ptr @stb0899_set_mclk._entry, ptr @stb0899_set_mclk._entry.564, ptr @stb0899_set_mclk._entry.567, ptr @stb0899_set_mclk._entry.570, ptr @stb0899_set_mclk._entry.573, ptr @stb0899_set_mclk._entry.576, ptr @stb0899_set_mclk._entry.579, ptr @stb0899_set_mclk._entry.582, ptr @stb0899_set_mclk._entry.585, ptr @stb0899_set_mclk._entry.588, ptr @stb0899_set_mclk._entry.591, ptr @stb0899_set_mclk._entry.594, ptr @stb0899_set_mclk._entry_ptr, ptr @stb0899_set_mclk._entry_ptr.566, ptr @stb0899_set_mclk._entry_ptr.569, ptr @stb0899_set_mclk._entry_ptr.572, ptr @stb0899_set_mclk._entry_ptr.575, ptr @stb0899_set_mclk._entry_ptr.578, ptr @stb0899_set_mclk._entry_ptr.581, ptr @stb0899_set_mclk._entry_ptr.584, ptr @stb0899_set_mclk._entry_ptr.587, ptr @stb0899_set_mclk._entry_ptr.590, ptr @stb0899_set_mclk._entry_ptr.593, ptr @stb0899_set_mclk._entry_ptr.596, ptr @stb0899_sleep._entry, ptr @stb0899_sleep._entry.215, ptr @stb0899_sleep._entry.218, ptr @stb0899_sleep._entry.221, ptr @stb0899_sleep._entry_ptr, ptr @stb0899_sleep._entry_ptr.217, ptr @stb0899_sleep._entry_ptr.220, ptr @stb0899_sleep._entry_ptr.223, ptr @stb0899_wait_diseqc_fifo_empty._entry, ptr @stb0899_wait_diseqc_fifo_empty._entry.413, ptr @stb0899_wait_diseqc_fifo_empty._entry.416, ptr @stb0899_wait_diseqc_fifo_empty._entry.419, ptr @stb0899_wait_diseqc_fifo_empty._entry_ptr, ptr @stb0899_wait_diseqc_fifo_empty._entry_ptr.415, ptr @stb0899_wait_diseqc_fifo_empty._entry_ptr.418, ptr @stb0899_wait_diseqc_fifo_empty._entry_ptr.421, ptr @stb0899_wait_diseqc_rxidle._entry, ptr @stb0899_wait_diseqc_rxidle._entry.424, ptr @stb0899_wait_diseqc_rxidle._entry.427, ptr @stb0899_wait_diseqc_rxidle._entry.430, ptr @stb0899_wait_diseqc_rxidle._entry_ptr, ptr @stb0899_wait_diseqc_rxidle._entry_ptr.426, ptr @stb0899_wait_diseqc_rxidle._entry_ptr.429, ptr @stb0899_wait_diseqc_rxidle._entry_ptr.432, ptr @stb0899_wait_diseqc_txidle._entry, ptr @stb0899_wait_diseqc_txidle._entry.434, ptr @stb0899_wait_diseqc_txidle._entry.436, ptr @stb0899_wait_diseqc_txidle._entry.438, ptr @stb0899_wait_diseqc_txidle._entry_ptr, ptr @stb0899_wait_diseqc_txidle._entry_ptr.435, ptr @stb0899_wait_diseqc_txidle._entry_ptr.437, ptr @stb0899_wait_diseqc_txidle._entry_ptr.439, ptr @stb0899_write_regs._entry, ptr @stb0899_write_regs._entry.37, ptr @stb0899_write_regs._entry.39, ptr @stb0899_write_regs._entry.41, ptr @stb0899_write_regs._entry.43, ptr @stb0899_write_regs._entry.45, ptr @stb0899_write_regs._entry.48, ptr @stb0899_write_regs._entry.51, ptr @stb0899_write_regs._entry.54, ptr @stb0899_write_regs._entry_ptr, ptr @stb0899_write_regs._entry_ptr.38, ptr @stb0899_write_regs._entry_ptr.40, ptr @stb0899_write_regs._entry_ptr.42, ptr @stb0899_write_regs._entry_ptr.44, ptr @stb0899_write_regs._entry_ptr.47, ptr @stb0899_write_regs._entry_ptr.50, ptr @stb0899_write_regs._entry_ptr.53, ptr @stb0899_write_regs._entry_ptr.56, ptr @stb0899_write_s2reg._entry, ptr @stb0899_write_s2reg._entry.14, ptr @stb0899_write_s2reg._entry.17, ptr @stb0899_write_s2reg._entry_ptr, ptr @stb0899_write_s2reg._entry_ptr.16, ptr @stb0899_write_s2reg._entry_ptr.19, ptr @verbose, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @stb0899_ops, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.224, ptr @.str.225, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.235, ptr @.str.236, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.259, ptr @.str.262, ptr @.str.265, ptr @.str.268, ptr @.str.271, ptr @.str.274, ptr @.str.277, ptr @.str.280, ptr @.str.283, ptr @.str.286, ptr @.str.289, ptr @.str.292, ptr @.str.295, ptr @.str.298, ptr @.str.301, ptr @.str.304, ptr @.str.307, ptr @.str.310, ptr @.str.313, ptr @.str.316, ptr @.str.319, ptr @.str.322, ptr @.str.325, ptr @.str.328, ptr @.str.331, ptr @.str.334, ptr @.str.337, ptr @.str.340, ptr @.str.342, ptr @stb0899_dvbsrf_tab, ptr @.str.349, ptr @.str.350, ptr @.str.352, ptr @.str.355, ptr @.str.358, ptr @stb0899_dvbs2rf_tab, ptr @.str.361, ptr @.str.364, ptr @.str.367, ptr @.str.370, ptr @stb0899_cn_tab, ptr @.str.380, ptr @.str.381, ptr @.str.383, ptr @.str.386, ptr @.str.389, ptr @stb0899_quant_tab, ptr @stb0899_est_tab, ptr @.str.392, ptr @.str.395, ptr @.str.398, ptr @.str.401, ptr @.str.411, ptr @.str.412, ptr @.str.414, ptr @.str.417, ptr @.str.420, ptr @.str.422, ptr @.str.423, ptr @.str.425, ptr @.str.428, ptr @.str.431, ptr @.str.433, ptr @.str.440, ptr @.str.441, ptr @.str.443, ptr @.str.446, ptr @.str.449, ptr @.str.452, ptr @.str.455, ptr @.str.458, ptr @.str.461, ptr @.str.464, ptr @.str.467, ptr @.str.470, ptr @.str.473, ptr @.str.476, ptr @.str.479, ptr @.str.482, ptr @.str.485, ptr @.str.488, ptr @.str.491, ptr @.str.494, ptr @.str.497, ptr @.str.500, ptr @.str.503, ptr @.str.506, ptr @.str.509, ptr @.str.512, ptr @.str.515, ptr @.str.518, ptr @.str.521, ptr @.str.524, ptr @.str.527, ptr @.str.530, ptr @.str.533, ptr @.str.543, ptr @.str.544, ptr @.str.546, ptr @.str.549, ptr @.str.552, ptr @.str.562, ptr @.str.563, ptr @.str.565, ptr @.str.568, ptr @.str.571, ptr @.str.574, ptr @.str.577, ptr @.str.580, ptr @.str.583, ptr @.str.586, ptr @.str.589, ptr @.str.592, ptr @.str.595, ptr @.str.597, ptr @.str.598, ptr @.str.600, ptr @.str.603, ptr @.str.606, ptr @.str.609, ptr @.str.612, ptr @.str.615, ptr @.str.618, ptr @.str.621, ptr @.str.624, ptr @.str.627, ptr @.str.630, ptr @.str.633, ptr @.str.636, ptr @.str.639, ptr @.str.642, ptr @.str.645, ptr @.str.648, ptr @.str.651, ptr @.str.654], section "llvm.metadata"
@0 = internal global [474 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_s2reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_s2reg._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_s2reg._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_s2reg._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_s2reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_s2reg._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_s2reg._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_regs._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_regs._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_regs._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_regs._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_write_regs._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_i2c_gate_ctrl._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_attach._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_reg._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_reg._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_reg._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_reg._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_reg._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_reg._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stb0899_read_reg._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_release._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_release._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_release._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_init._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_mclk._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_mclk._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_mclk._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_sleep._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_sleep._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_sleep._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_frontend._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_frontend._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_frontend._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_status._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_ber._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_ber._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_ber._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbsrf_tab to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.354 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2rf_tab to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.360 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.363 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.369 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_signal_strength._entry.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_cn_tab to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_quant_tab to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_est_tab to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.394 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.403 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_read_snr._entry.409 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_fifo_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_fifo_empty._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_fifo_empty._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_fifo_empty._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_rxidle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_rxidle._entry.424 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_rxidle._entry.427 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_rxidle._entry.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_txidle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_txidle._entry.434 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_txidle._entry.436 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_wait_diseqc_txidle._entry.438 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.442 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.445 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.448 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.451 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.454 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.460 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.463 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.466 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.469 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.472 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.475 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.478 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.481 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.484 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.487 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.490 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.493 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.496 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.497 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.499 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.502 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.503 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.505 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.506 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.508 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.511 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.514 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.515 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.517 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.520 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.521 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.523 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.526 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.529 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.532 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.535 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.537 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.539 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search._entry.541 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_delivery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.543 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.544 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_delivery._entry.545 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.546 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_delivery._entry.548 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.549 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_delivery._entry.551 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.552 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_delivery._entry.554 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_delivery._entry.556 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_delivery._entry.558 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_delivery._entry.560 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.562 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.563 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.564 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.565 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.567 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.568 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.570 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.571 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.573 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.574 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.576 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.577 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.579 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.580 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.582 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.583 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.585 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.586 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.588 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.589 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.591 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.592 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_mclk._entry.594 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.595 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.597 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.598 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.599 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.600 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.602 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.603 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.605 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.606 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.608 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.609 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.611 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.612 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.614 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.615 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.617 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.618 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.620 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.621 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.623 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.624 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.626 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.627 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.629 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.630 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.632 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.633 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.635 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.636 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.638 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.639 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.641 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.642 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.644 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.645 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.647 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.648 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.650 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.651 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_get_dev_id._entry.653 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.654 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stb0899_read_reg(ptr nocapture noundef readonly %state, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %state, i32 noundef %reg)
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %land.lhs.true2 [
    i32 62207, label %entry.if.end_crit_edge
    i32 63231, label %entry.if.end_crit_edge13
  ]

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = trunc i32 %reg to i16
  %trunc = and i16 %1, -256
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.656)
  switch i16 %trunc, label %land.lhs.true2.if.end_crit_edge [
    i16 -3584, label %land.lhs.true2.if.then_crit_edge
    i16 -2560, label %land.lhs.true2.if.then_crit_edge14
  ]

land.lhs.true2.if.then_crit_edge14:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true2.if.then_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2.if.then_crit_edge, %land.lhs.true2.if.then_crit_edge14
  %or = or i32 %reg, 255
  %call6 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %state, i32 noundef %or)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge13
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_stb0899_read_reg(ptr nocapture noundef readonly %state, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [2 x i8], align 1
  %buf = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0) #7
  %0 = getelementptr inbounds [2 x i8], ptr %b0, i32 0, i32 1
  %shr = lshr i32 %reg, 8
  %conv = trunc i32 %shr to i8
  %1 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %b0, align 1
  %conv1 = trunc i32 %reg to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %buf, align 1, !annotation !807
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.stb0899_config, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %demod_address, align 4
  %conv3 = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0, ptr %buf4, align 4
  %arrayinit.element5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %14 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv3, ptr %arrayinit.element5, align 4
  %flags10 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %15 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags10, align 2
  %len11 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %16 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len11, align 4
  %buf12 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %17 = ptrtoint ptr %buf12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %buf12, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 2) #7
  %20 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.657)
  switch i32 %call, label %do.body [
    i32 2, label %if.end75
    i32 -512, label %entry.if.end72_crit_edge
  ]

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.body:                                          ; preds = %entry
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %21 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %verbose, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18.not = icmp eq i32 %24, 0
  br i1 %cmp18.not, label %do.body.if.end72_crit_edge, label %do.end

do.body.if.end72_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef %reg, i32 noundef %call) #10
  br label %if.end72

if.end72:                                         ; preds = %do.end, %do.body.if.end72_crit_edge, %entry.if.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp73 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp73, i32 %call, i32 -121
  br label %cleanup

if.end75:                                         ; preds = %entry
  %verbose76 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %25 = ptrtoint ptr %verbose76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %verbose76, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp77 = icmp ugt i32 %28, 3
  br i1 %cmp77, label %do.end92, label %if.end75.if.end147_crit_edge, !prof !808

if.end75.if.end147_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

do.end92:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buf, align 1
  %conv94 = zext i8 %30 to i32
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.98, i32 noundef %reg, i32 noundef %conv94) #10
  br label %if.end147

if.end147:                                        ; preds = %do.end92, %if.end75.if.end147_crit_edge
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 1
  %conv148 = zext i8 %32 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %if.end72
  %retval.0 = phi i32 [ %spec.select, %if.end72 ], [ %conv148, %if.end147 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_stb0899_read_s2reg(ptr nocapture noundef readonly %state, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i16 noundef zeroext %stb0899_reg_offset) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  %buf_0 = alloca [6 x i8], align 1
  %buf_1 = alloca [2 x i8], align 2
  %msg_0 = alloca %struct.i2c_msg, align 4
  %msg_1 = alloca %struct.i2c_msg, align 4
  %msg_r = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf_0) #7
  %1 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 5
  %shr = lshr i32 %stb0899_i2cdev, 8
  %conv = trunc i32 %shr to i8
  %6 = ptrtoint ptr %buf_0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf_0, align 1
  %conv3 = trunc i32 %stb0899_i2cdev to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %1, align 1
  %conv7 = trunc i32 %stb0899_base_addr to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %2, align 1
  %shr9 = lshr i32 %stb0899_base_addr, 8
  %conv11 = trunc i32 %shr9 to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11, ptr %3, align 1
  %shr13 = lshr i32 %stb0899_base_addr, 16
  %conv15 = trunc i32 %shr13 to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv15, ptr %4, align 1
  %shr17 = lshr i32 %stb0899_base_addr, 24
  %conv19 = trunc i32 %shr17 to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_1) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_0) #7
  %12 = getelementptr inbounds i8, ptr %msg_0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %config = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.stb0899_config, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %demod_address, align 4
  %conv20 = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg_0 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv20, ptr %msg_0, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg_0, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg_0, i32 0, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 6, ptr %len, align 4
  %buf21 = getelementptr inbounds %struct.i2c_msg, ptr %msg_0, i32 0, i32 3
  %21 = ptrtoint ptr %buf21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf_0, ptr %buf21, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_1) #7
  %22 = getelementptr inbounds i8, ptr %msg_1, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4
  %24 = ptrtoint ptr %msg_1 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv20, ptr %msg_1, align 4
  %flags26 = getelementptr inbounds %struct.i2c_msg, ptr %msg_1, i32 0, i32 1
  %25 = ptrtoint ptr %flags26 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags26, align 2
  %len27 = getelementptr inbounds %struct.i2c_msg, ptr %msg_1, i32 0, i32 2
  %26 = ptrtoint ptr %len27 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %len27, align 4
  %buf28 = getelementptr inbounds %struct.i2c_msg, ptr %msg_1, i32 0, i32 3
  %27 = ptrtoint ptr %buf28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf_1, ptr %buf28, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_r) #7
  %28 = getelementptr inbounds i8, ptr %msg_r, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4
  %30 = ptrtoint ptr %msg_r to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv20, ptr %msg_r, align 4
  %flags34 = getelementptr inbounds %struct.i2c_msg, ptr %msg_r, i32 0, i32 1
  %31 = ptrtoint ptr %flags34 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags34, align 2
  %len35 = getelementptr inbounds %struct.i2c_msg, ptr %msg_r, i32 0, i32 2
  %32 = ptrtoint ptr %len35 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 4, ptr %len35, align 4
  %buf36 = getelementptr inbounds %struct.i2c_msg, ptr %msg_r, i32 0, i32 3
  %33 = ptrtoint ptr %buf36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf, ptr %buf36, align 4
  %conv38 = zext i16 %stb0899_reg_offset to i32
  %and42 = and i32 %conv38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool.not = icmp eq i32 %and42, 0
  %extract = lshr i16 %stb0899_reg_offset, 8
  %extract.t203 = trunc i16 %extract to i8
  %34 = trunc i16 %stb0899_reg_offset to i8
  %extract.t202 = or i8 %34, 32
  %tmpaddr.0.off0 = select i1 %tobool.not, i8 %extract.t202, i8 0
  %35 = ptrtoint ptr %buf_1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %extract.t203, ptr %buf_1, align 2
  %arrayidx53 = getelementptr inbounds [2 x i8], ptr %buf_1, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %tmpaddr.0.off0, ptr %arrayidx53, align 1
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg_0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then55, label %if.end62

if.then55:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call)
  %cmp56.not = icmp eq i32 %call, -512
  br i1 %cmp56.not, label %if.then55.err.thread_crit_edge, label %do.end

if.then55.err.thread_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.thread

do.end:                                           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i32 noundef %conv38, i32 noundef %call) #10
  br label %err

if.end62:                                         ; preds = %entry
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %call64 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg_1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 1
  br i1 %cmp65, label %if.end62.err_crit_edge, label %if.end68

if.end62.err_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end68:                                         ; preds = %if.end62
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state, align 4
  %call70 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg_r, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %if.end68.err_crit_edge, label %if.end74

if.end68.err_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end74:                                         ; preds = %if.end68
  %43 = ptrtoint ptr %buf_1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %extract.t203, ptr %buf_1, align 2
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %34, ptr %arrayidx53, align 1
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state, align 4
  %call86 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg_1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 1
  br i1 %cmp87, label %if.then89, label %if.end100

if.then89:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call86)
  %cmp90.not = icmp eq i32 %call86, -512
  br i1 %cmp90.not, label %if.then89.err.thread_crit_edge, label %do.end95

if.then89.err.thread_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.thread

do.end95:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i32 noundef %conv38, i32 noundef %call86) #10
  br label %err

if.end100:                                        ; preds = %if.end74
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state, align 4
  %call102 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg_r, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 1
  br i1 %cmp103, label %if.then105, label %if.end118

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call102)
  %cmp106.not = icmp eq i32 %call102, -512
  br i1 %cmp106.not, label %if.then105.if.end115_crit_edge, label %do.end111

if.then105.if.end115_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

do.end111:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i32 noundef %conv38, i32 noundef %call102) #10
  br label %if.end115

if.end115:                                        ; preds = %do.end111, %if.then105.if.end115_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp116 = icmp slt i32 %call102, 0
  %spec.select = select i1 %cmp116, i32 %call102, i32 -121
  br label %cleanup

if.end118:                                        ; preds = %if.end100
  %arrayidx119 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %50 to i32
  %shl = shl nuw i32 %conv120, 24
  %arrayidx121 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %52 to i32
  %shl123 = shl nuw nsw i32 %conv122, 16
  %or124 = or i32 %shl123, %shl
  %arrayidx125 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %54 to i32
  %shl127 = shl nuw nsw i32 %conv126, 8
  %or128 = or i32 %or124, %shl127
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buf, align 1
  %conv130 = zext i8 %56 to i32
  %or131 = or i32 %or128, %conv130
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %57 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %verbose, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp132 = icmp ugt i32 %60, 3
  br i1 %cmp132, label %do.end139, label %if.end118.cleanup_crit_edge, !prof !808

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end139:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i32 noundef %conv38, i32 noundef %or131) #10
  br label %cleanup

err:                                              ; preds = %do.end95, %if.end68.err_crit_edge, %if.end62.err_crit_edge, %do.end
  %status.0 = phi i32 [ %call, %do.end ], [ %call64, %if.end62.err_crit_edge ], [ %call70, %if.end68.err_crit_edge ], [ %call86, %do.end95 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp144 = icmp slt i32 %status.0, 0
  br i1 %cmp144, label %err.err.thread_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err.err.thread_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.thread

err.thread:                                       ; preds = %err.err.thread_crit_edge, %if.then89.err.thread_crit_edge, %if.then55.err.thread_crit_edge
  %status.0209 = phi i32 [ %status.0, %err.err.thread_crit_edge ], [ -512, %if.then55.err.thread_crit_edge ], [ -512, %if.then89.err.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err.thread, %err.cleanup_crit_edge, %do.end139, %if.end118.cleanup_crit_edge, %if.end115
  %retval.0 = phi i32 [ %spec.select, %if.end115 ], [ %or131, %do.end139 ], [ %or131, %if.end118.cleanup_crit_edge ], [ %status.0209, %err.thread ], [ -121, %err.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_r) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_1) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf_0) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stb0899_write_s2reg(ptr nocapture noundef readonly %state, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i16 noundef zeroext %stb0899_reg_offset, i32 noundef %stb0899_data) local_unnamed_addr #0 align 64 {
entry:
  %buf_0 = alloca [6 x i8], align 1
  %buf_1 = alloca [6 x i8], align 1
  %msg_0 = alloca %struct.i2c_msg, align 4
  %msg_1 = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf_0) #7
  %0 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %buf_0, i32 0, i32 5
  %shr = lshr i32 %stb0899_i2cdev, 8
  %conv = trunc i32 %shr to i8
  %5 = ptrtoint ptr %buf_0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %buf_0, align 1
  %conv3 = trunc i32 %stb0899_i2cdev to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %0, align 1
  %conv7 = trunc i32 %stb0899_base_addr to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %1, align 1
  %shr9 = lshr i32 %stb0899_base_addr, 8
  %conv11 = trunc i32 %shr9 to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11, ptr %2, align 1
  %shr13 = lshr i32 %stb0899_base_addr, 16
  %conv15 = trunc i32 %shr13 to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %3, align 1
  %shr17 = lshr i32 %stb0899_base_addr, 24
  %conv19 = trunc i32 %shr17 to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv19, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf_1) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_0) #7
  %11 = getelementptr inbounds i8, ptr %msg_0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %config = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %demod_address, align 4
  %conv20 = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg_0 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv20, ptr %msg_0, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg_0, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg_0, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 6, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg_0, i32 0, i32 3
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf_0, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_1) #7
  %21 = getelementptr inbounds i8, ptr %msg_1, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4
  %23 = ptrtoint ptr %msg_1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv20, ptr %msg_1, align 4
  %flags25 = getelementptr inbounds %struct.i2c_msg, ptr %msg_1, i32 0, i32 1
  %24 = ptrtoint ptr %flags25 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags25, align 2
  %len26 = getelementptr inbounds %struct.i2c_msg, ptr %msg_1, i32 0, i32 2
  %25 = ptrtoint ptr %len26 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 6, ptr %len26, align 4
  %buf27 = getelementptr inbounds %struct.i2c_msg, ptr %msg_1, i32 0, i32 3
  %26 = ptrtoint ptr %buf27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf_1, ptr %buf27, align 4
  %conv29 = zext i16 %stb0899_reg_offset to i32
  %27 = lshr i16 %stb0899_reg_offset, 8
  %conv32 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %buf_1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv32, ptr %buf_1, align 1
  %conv36 = trunc i16 %stb0899_reg_offset to i8
  %arrayidx37 = getelementptr inbounds [6 x i8], ptr %buf_1, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv36, ptr %arrayidx37, align 1
  %conv40 = trunc i32 %stb0899_data to i8
  %arrayidx41 = getelementptr inbounds [6 x i8], ptr %buf_1, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv40, ptr %arrayidx41, align 1
  %shr42 = lshr i32 %stb0899_data, 8
  %conv44 = trunc i32 %shr42 to i8
  %arrayidx45 = getelementptr inbounds [6 x i8], ptr %buf_1, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv44, ptr %arrayidx45, align 1
  %shr46 = lshr i32 %stb0899_data, 16
  %conv48 = trunc i32 %shr46 to i8
  %arrayidx49 = getelementptr inbounds [6 x i8], ptr %buf_1, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv48, ptr %arrayidx49, align 1
  %shr50 = lshr i32 %stb0899_data, 24
  %conv52 = trunc i32 %shr50 to i8
  %arrayidx53 = getelementptr inbounds [6 x i8], ptr %buf_1, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv52, ptr %arrayidx53, align 1
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %34 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %verbose, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp = icmp ugt i32 %37, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !808

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i32 noundef %conv29, i32 noundef %stb0899_data) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state, align 4
  %call57 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg_0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 1
  br i1 %cmp58, label %if.then66, label %if.end77, !prof !808

if.then66:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call57)
  %cmp67.not = icmp eq i32 %call57, -512
  br i1 %cmp67.not, label %if.then66.err_crit_edge, label %do.end72

if.then66.err_crit_edge:                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end72:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i32 noundef %conv29, i32 noundef %stb0899_data, i32 noundef %call57) #10
  br label %err

if.end77:                                         ; preds = %if.end
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %call79 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg_1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 1
  br i1 %cmp80, label %if.then88, label %if.end77.cleanup_crit_edge, !prof !808

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then88:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call79)
  %cmp89.not = icmp eq i32 %call79, -512
  br i1 %cmp89.not, label %if.then88.if.end98_crit_edge, label %do.end94

if.then88.if.end98_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end94:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef %stb0899_i2cdev, i32 noundef %stb0899_base_addr, i32 noundef %conv29, i32 noundef %stb0899_data, i32 noundef %call79) #10
  br label %if.end98

if.end98:                                         ; preds = %do.end94, %if.then88.if.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp99 = icmp slt i32 %call79, 0
  %spec.select = select i1 %cmp99, i32 %call79, i32 -121
  br label %cleanup

err:                                              ; preds = %do.end72, %if.then66.err_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp102 = icmp slt i32 %call57, 0
  %spec.select145 = select i1 %cmp102, i32 %call57, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end98, %if.end77.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select145, %err ], [ %spec.select, %if.end98 ], [ 0, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_0) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf_1) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf_0) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stb0899_read_regs(ptr nocapture noundef readonly %state, i32 noundef %reg, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [2 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0) #7
  %0 = getelementptr inbounds [2 x i8], ptr %b0, i32 0, i32 1
  %shr = lshr i32 %reg, 8
  %conv = trunc i32 %shr to i8
  %1 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %b0, align 1
  %conv1 = trunc i32 %reg to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %config = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.stb0899_config, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %demod_address, align 4
  %conv3 = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0, ptr %buf4, align 4
  %arrayinit.element5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %13 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv3, ptr %arrayinit.element5, align 4
  %flags10 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags10, align 2
  %len11 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %conv12 = trunc i32 %count to i16
  %15 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12, ptr %len11, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf13, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #7
  %19 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.658)
  switch i32 %call, label %do.end [
    i32 2, label %if.end20
    i32 -512, label %entry.err_crit_edge
  ]

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %reg, i32 noundef %count, i32 noundef %call) #10
  br label %err

if.end20:                                         ; preds = %entry
  %20 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.659)
  switch i32 %reg, label %land.lhs.true25 [
    i32 62207, label %if.end20.do.body35_crit_edge
    i32 63231, label %if.end20.do.body35_crit_edge143
  ]

if.end20.do.body35_crit_edge143:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35

if.end20.do.body35_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35

land.lhs.true25:                                  ; preds = %if.end20
  %21 = trunc i32 %reg to i16
  %trunc = and i16 %21, -256
  %22 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.660)
  switch i16 %trunc, label %land.lhs.true25.do.body35_crit_edge [
    i16 -3584, label %land.lhs.true25.if.then32_crit_edge
    i16 -2560, label %land.lhs.true25.if.then32_crit_edge144
  ]

land.lhs.true25.if.then32_crit_edge144:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

land.lhs.true25.if.then32_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

land.lhs.true25.do.body35_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35

if.then32:                                        ; preds = %land.lhs.true25.if.then32_crit_edge, %land.lhs.true25.if.then32_crit_edge144
  %or = or i32 %reg, 255
  %call33 = call fastcc i32 @_stb0899_read_reg(ptr noundef %state, i32 noundef %or)
  br label %do.body35

do.body35:                                        ; preds = %if.then32, %land.lhs.true25.do.body35_crit_edge, %if.end20.do.body35_crit_edge, %if.end20.do.body35_crit_edge143
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %23 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %verbose, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %switch = icmp ult i32 %26, 5
  br i1 %switch, label %do.body35.cleanup_crit_edge, label %do.end45

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21, i32 noundef %reg, i32 noundef %count, ptr noundef %buf) #10
  br label %cleanup

err:                                              ; preds = %do.end, %entry.err_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp95 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp95, i32 %call, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end45, %do.body35.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %err ], [ 0, %do.end45 ], [ 0, %do.body35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stb0899_write_regs(ptr nocapture noundef readonly %state, i32 noundef %reg, ptr noundef %data, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %i2c_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2c_msg) #7
  %1 = getelementptr inbounds i8, ptr %i2c_msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %config = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.stb0899_config, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %demod_address, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %i2c_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 2
  %add = add i32 %count, 2
  %conv1 = trunc i32 %add to i16
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp = icmp ugt i32 %add, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36, i32 noundef %reg, i32 noundef %count) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %reg, 8
  %conv5 = trunc i32 %shr to i8
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %buf, align 1
  %conv6 = trunc i32 %reg to i8
  %arrayidx7 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %arrayidx8, ptr %data, i32 %count)
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %14 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %verbose, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %switch = icmp ult i32 %17, 5
  br i1 %switch, label %if.end.do.end67_crit_edge, label %do.end18

if.end.do.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.35, i32 noundef %reg, i32 noundef %count, ptr noundef %data) #10
  br label %do.end67

do.end67:                                         ; preds = %do.end18, %if.end.do.end67_crit_edge
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %call68 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %i2c_msg, i32 noundef 1) #7
  %20 = trunc i32 %reg to i16
  %trunc = and i16 %20, -256
  %21 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.661)
  switch i16 %trunc, label %do.end67.if.end77_crit_edge [
    i16 -3584, label %do.end67.if.then75_crit_edge
    i16 -2560, label %do.end67.if.then75_crit_edge226
  ]

do.end67.if.then75_crit_edge226:                  ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75

do.end67.if.then75_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75

do.end67.if.end77_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then75:                                        ; preds = %do.end67.if.then75_crit_edge, %do.end67.if.then75_crit_edge226
  %or = or i32 %reg, 255
  %call.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %state, i32 noundef %or) #7
  %22 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.662)
  switch i32 %or, label %land.lhs.true2.i [
    i32 62207, label %if.then75.if.end77_crit_edge
    i32 63231, label %if.then75.if.end77_crit_edge227
  ]

if.then75.if.end77_crit_edge227:                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then75.if.end77_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

land.lhs.true2.i:                                 ; preds = %if.then75
  %23 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.663)
  switch i16 %trunc, label %land.lhs.true2.i.if.end77_crit_edge [
    i16 -3584, label %land.lhs.true2.i.if.then.i_crit_edge
    i16 -2560, label %land.lhs.true2.i.if.then.i_crit_edge228
  ]

land.lhs.true2.i.if.then.i_crit_edge228:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true2.i.if.then.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true2.i.if.end77_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then.i:                                        ; preds = %land.lhs.true2.i.if.then.i_crit_edge, %land.lhs.true2.i.if.then.i_crit_edge228
  %call6.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %state, i32 noundef %or) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then.i, %land.lhs.true2.i.if.end77_crit_edge, %if.then75.if.end77_crit_edge, %if.then75.if.end77_crit_edge227, %do.end67.if.end77_crit_edge
  %24 = zext i32 %call68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.664)
  switch i32 %call68, label %do.body84 [
    i32 1, label %if.end77.cleanup_crit_edge
    i32 -512, label %if.end77.if.end154_crit_edge
  ]

if.end77.if.end154_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body84:                                        ; preds = %if.end77
  %25 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %verbose, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp86.not = icmp eq i32 %28, 0
  br i1 %cmp86.not, label %do.body84.if.end154_crit_edge, label %do.end95

do.body84.if.end154_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

do.end95:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data, align 1
  %conv98 = zext i8 %30 to i32
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.35, i32 noundef %reg, i32 noundef %conv98, i32 noundef %count, i32 noundef %call68) #10
  br label %if.end154

if.end154:                                        ; preds = %do.end95, %do.body84.if.end154_crit_edge, %if.end77.if.end154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp155 = icmp slt i32 %call68, 0
  %spec.select = select i1 %cmp155, i32 %call68, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %if.end154, %if.end77.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %if.end154 ], [ 0, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2c_msg) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stb0899_write_reg(ptr nocapture noundef readonly %state, i32 noundef %reg, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data, ptr %tmp, align 1
  %call = call i32 @stb0899_write_regs(ptr noundef %state, i32 noundef %reg, ptr noundef nonnull %tmp, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stb0899_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %tmp.i233 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61738) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.do.body124_crit_edge, label %if.end

entry.do.body124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %verbose56 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %verbose56 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %verbose56, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch229 = icmp ult i32 %5, 4
  br i1 %tobool.not, label %do.body55, label %do.body

do.body:                                          ; preds = %if.end
  br i1 %switch229, label %do.body.do.end48_crit_edge, label %do.end

do.body.do.end48_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #10
  br label %do.end48

do.end48:                                         ; preds = %do.end, %do.body.do.end48_crit_edge
  %6 = trunc i32 %call.i to i8
  %conv = or i8 %6, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i232 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61738, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %cmp50 = icmp slt i32 %call.i232, 0
  br i1 %cmp50, label %do.end48.do.body124_crit_edge, label %do.end48.cleanup_crit_edge

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end48.do.body124_crit_edge:                    ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124

do.body55:                                        ; preds = %if.end
  br i1 %switch229, label %do.body55.do.end116_crit_edge, label %do.end66

do.body55.do.end116_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

do.end66:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.58) #10
  br label %do.end116

do.end116:                                        ; preds = %do.end66, %do.body55.do.end116_crit_edge
  %8 = trunc i32 %call.i to i8
  %conv117 = and i8 %8, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i233) #7
  %9 = ptrtoint ptr %tmp.i233 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv117, ptr %tmp.i233, align 1
  %call.i234 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61738, ptr noundef nonnull %tmp.i233, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i233) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %cmp119 = icmp slt i32 %call.i234, 0
  br i1 %cmp119, label %do.end116.do.body124_crit_edge, label %do.end116.cleanup_crit_edge

do.end116.cleanup_crit_edge:                      ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end116.do.body124_crit_edge:                   ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124

do.body124:                                       ; preds = %do.end116.do.body124_crit_edge, %do.end48.do.body124_crit_edge, %entry.do.body124_crit_edge
  %verbose125 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %verbose125 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %verbose125, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp126.not = icmp eq i32 %13, 0
  br i1 %cmp126.not, label %do.body124.cleanup_crit_edge, label %do.end135

do.body124.cleanup_crit_edge:                     ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end135:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end135, %do.body124.cleanup_crit_edge, %do.end116.cleanup_crit_edge, %do.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end116.cleanup_crit_edge ], [ 0, %do.end48.cleanup_crit_edge ], [ -121, %do.end135 ], [ -121, %do.body124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stb0899_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %demod_str.i = alloca [5 x i8], align 1
  %fec_str.i = alloca [5 x i8], align 1
  %tmp.i1.i.i = alloca i8, align 1
  %tmp.i.i.i = alloca i8, align 1
  %tmp.i3.i = alloca i8, align 1
  %tmp.i1.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1280) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %verbose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @verbose, ptr %verbose, align 8
  %config1 = getelementptr inbounds %struct.stb0899_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config1, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %frontend = getelementptr inbounds %struct.stb0899_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.stb0899_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @stb0899_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.stb0899_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %inversion = getelementptr inbounds %struct.stb0899_config, ptr %config, i32 0, i32 6
  %6 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inversion, align 4
  %inversion4 = getelementptr inbounds %struct.stb0899_state, ptr %call7.i.i, i32 0, i32 4, i32 28
  %8 = ptrtoint ptr %inversion4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %inversion4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %9 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @stb0899_write_regs(ptr noundef nonnull %call7.i.i, i32 noundef 61878, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.stb0899_wakeup.exit_crit_edge

if.end.stb0899_wakeup.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_wakeup.exit

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i) #7
  %10 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tmp.i1.i, align 1
  %call.i2.i = call i32 @stb0899_write_regs(ptr noundef nonnull %call7.i.i, i32 noundef 61890, ptr noundef nonnull %tmp.i1.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool2.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.stb0899_wakeup.exit_crit_edge

if.end.i.stb0899_wakeup.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_wakeup.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  %11 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tmp.i3.i, align 1
  %call.i4.i = call i32 @stb0899_write_regs(ptr noundef nonnull %call7.i.i, i32 noundef 61891, ptr noundef nonnull %tmp.i3.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool6.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.stb0899_wakeup.exit_crit_edge

if.end4.i.stb0899_wakeup.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_wakeup.exit

if.end8.i:                                        ; preds = %if.end4.i
  %12 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config1, align 4
  %postproc2.i.i = getelementptr inbounds %struct.stb0899_config, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %postproc2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %postproc2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end8.i.stb0899_wakeup.exit_crit_edge, label %if.then.i.i

if.end8.i.stb0899_wakeup.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_wakeup.exit

if.then.i.i:                                      ; preds = %if.end8.i
  %level18.i.i = getelementptr %struct.stb0899_postproc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %level18.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %level18.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp20.i.i = icmp eq i8 %17, 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %15, align 2
  %conv26.i.i = zext i16 %19 to i32
  br i1 %cmp20.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #7
  %20 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %tmp.i.i.i, align 1
  %call.i.i.i = call i32 @stb0899_write_regs(ptr noundef nonnull %call7.i.i, i32 noundef %conv26.i.i, ptr noundef nonnull %tmp.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #7
  br label %stb0899_wakeup.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i.i) #7
  %21 = ptrtoint ptr %tmp.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -126, ptr %tmp.i1.i.i, align 1
  %call.i2.i.i = call i32 @stb0899_write_regs(ptr noundef nonnull %call7.i.i, i32 noundef %conv26.i.i, ptr noundef nonnull %tmp.i1.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i.i) #7
  br label %stb0899_wakeup.exit

stb0899_wakeup.exit:                              ; preds = %if.else.i.i, %if.then6.i.i, %if.end8.i.stb0899_wakeup.exit_crit_edge, %if.end4.i.stb0899_wakeup.exit_crit_edge, %if.end.i.stb0899_wakeup.exit_crit_edge, %if.end.stb0899_wakeup.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %demod_str.i) #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %fec_str.i) #7
  %22 = call ptr @memset(ptr %fec_str.i, i32 0, i32 5)
  %call.i.i30 = call fastcc i32 @_stb0899_read_reg(ptr noundef nonnull %call7.i.i, i32 noundef 61440) #7
  %23 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %verbose, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %switch.i = icmp ult i32 %26, 4
  br i1 %switch.i, label %stb0899_wakeup.exit.do.end56.i_crit_edge, label %do.end.i

stb0899_wakeup.exit.do.end56.i_crit_edge:         ; preds = %stb0899_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

do.end.i:                                         ; preds = %stb0899_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = and i32 %call.i.i30, 65535
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.597, ptr noundef nonnull @.str.598, i32 noundef %conv6.i) #10
  br label %do.end56.i

do.end56.i:                                       ; preds = %do.end.i, %stb0899_wakeup.exit.do.end56.i_crit_edge
  %27 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %verbose, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp65.not.i = icmp eq i32 %30, 0
  br i1 %cmp65.not.i, label %do.end56.i.do.end132.i_crit_edge, label %do.end74.i

do.end56.i.do.end132.i_crit_edge:                 ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end132.i

do.end74.i:                                       ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv62.i = and i32 %call.i.i30, 15
  %31 = lshr i32 %call.i.i30, 4
  %conv76.i = and i32 %31, 15
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.609, ptr noundef nonnull @.str.598, i32 noundef %conv76.i, i32 noundef %conv62.i) #10
  br label %do.end132.i

do.end132.i:                                      ; preds = %do.end74.i, %do.end56.i.do.end132.i_crit_edge
  %call133.i = call i32 @_stb0899_read_s2reg(ptr noundef nonnull %call7.i.i, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3276) #7
  %shr.i.i = lshr i32 %call133.i, 24
  %conv.i.i = trunc i32 %shr.i.i to i8
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %demod_str.i, i32 1
  %32 = ptrtoint ptr %demod_str.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i.i, ptr %demod_str.i, align 1
  %shr1.i.i = lshr i32 %call133.i, 16
  %conv3.i.i = trunc i32 %shr1.i.i to i8
  %incdec.ptr4.i.i = getelementptr inbounds i8, ptr %demod_str.i, i32 2
  %33 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3.i.i, ptr %incdec.ptr.i.i, align 1
  %shr5.i.i = lshr i32 %call133.i, 8
  %conv7.i.i = trunc i32 %shr5.i.i to i8
  %incdec.ptr8.i.i = getelementptr inbounds i8, ptr %demod_str.i, i32 3
  %34 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv7.i.i, ptr %incdec.ptr4.i.i, align 1
  %conv11.i.i = trunc i32 %call133.i to i8
  %incdec.ptr12.i.i = getelementptr inbounds i8, ptr %demod_str.i, i32 4
  %35 = ptrtoint ptr %incdec.ptr8.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv11.i.i, ptr %incdec.ptr8.i.i, align 1
  %36 = ptrtoint ptr %incdec.ptr12.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %incdec.ptr12.i.i, align 1
  %call134.i = call i32 @_stb0899_read_s2reg(ptr noundef nonnull %call7.i.i, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3268) #7
  %37 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %verbose, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp137.not.i = icmp eq i32 %40, 0
  br i1 %cmp137.not.i, label %do.end132.i.do.end196.i_crit_edge, label %do.end146.i

do.end132.i.do.end196.i_crit_edge:                ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end196.i

do.end146.i:                                      ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.621, ptr noundef nonnull @.str.598, ptr noundef nonnull %demod_str.i, i32 noundef %call134.i) #10
  br label %do.end196.i

do.end196.i:                                      ; preds = %do.end146.i, %do.end132.i.do.end196.i_crit_edge
  %call197.i = call i32 @_stb0899_read_s2reg(ptr noundef nonnull %call7.i.i, i32 noundef 64252, i32 noundef 2048, i16 noundef zeroext -1492) #7
  %shr.i402.i = lshr i32 %call197.i, 24
  %conv.i403.i = trunc i32 %shr.i402.i to i8
  %incdec.ptr.i404.i = getelementptr inbounds i8, ptr %fec_str.i, i32 1
  %41 = ptrtoint ptr %fec_str.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i403.i, ptr %fec_str.i, align 1
  %shr1.i405.i = lshr i32 %call197.i, 16
  %conv3.i406.i = trunc i32 %shr1.i405.i to i8
  %incdec.ptr4.i407.i = getelementptr inbounds i8, ptr %fec_str.i, i32 2
  %42 = ptrtoint ptr %incdec.ptr.i404.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv3.i406.i, ptr %incdec.ptr.i404.i, align 1
  %shr5.i408.i = lshr i32 %call197.i, 8
  %conv7.i409.i = trunc i32 %shr5.i408.i to i8
  %incdec.ptr8.i410.i = getelementptr inbounds i8, ptr %fec_str.i, i32 3
  %43 = ptrtoint ptr %incdec.ptr4.i407.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv7.i409.i, ptr %incdec.ptr4.i407.i, align 1
  %conv11.i411.i = trunc i32 %call197.i to i8
  %incdec.ptr12.i412.i = getelementptr inbounds i8, ptr %fec_str.i, i32 4
  %44 = ptrtoint ptr %incdec.ptr8.i410.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv11.i411.i, ptr %incdec.ptr8.i410.i, align 1
  %45 = ptrtoint ptr %incdec.ptr12.i412.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %incdec.ptr12.i412.i, align 1
  %call198.i = call i32 @_stb0899_read_s2reg(ptr noundef nonnull %call7.i.i, i32 noundef 64252, i32 noundef 2048, i16 noundef zeroext -1484) #7
  %46 = and i32 %call.i.i30, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp200.not.i = icmp eq i32 %46, 0
  %47 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %verbose, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp205.not.i = icmp eq i32 %50, 0
  br i1 %cmp200.not.i, label %do.body203.i, label %do.body266.i

do.body203.i:                                     ; preds = %do.end196.i
  br i1 %cmp205.not.i, label %do.body203.i.do.end_crit_edge, label %do.end214.i

do.body203.i.do.end_crit_edge:                    ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end214.i:                                      ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #9
  %call216.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.633, ptr noundef nonnull @.str.598) #10
  br label %do.end

do.body266.i:                                     ; preds = %do.end196.i
  br i1 %cmp205.not.i, label %do.body266.i.do.end14_crit_edge, label %do.end277.i

do.body266.i.do.end14_crit_edge:                  ; preds = %do.body266.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end277.i:                                      ; preds = %do.body266.i
  call void @__sanitizer_cov_trace_pc() #9
  %call279.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.645, ptr noundef nonnull @.str.598, ptr noundef nonnull %fec_str.i, i32 noundef %call198.i) #10
  br label %do.end14

do.end:                                           ; preds = %do.end214.i, %do.body203.i.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %fec_str.i) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %demod_str.i) #7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #10
  br label %error

do.end14:                                         ; preds = %do.end277.i, %do.body266.i.do.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %fec_str.i) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %demod_str.i) #7
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #10
  br label %cleanup

error:                                            ; preds = %do.end, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end14
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %do.end14 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stb0899_detach(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i5.i = alloca i8, align 1
  %tmp.i3.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config1.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1.i, align 4
  %postproc2.i = getelementptr inbounds %struct.stb0899_config, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %postproc2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %postproc2.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.stb0899_postproc.exit_crit_edge, label %if.then.i

entry.stb0899_postproc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_postproc.exit

if.then.i:                                        ; preds = %entry
  %level18.i = getelementptr %struct.stb0899_postproc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %level18.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %level18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp20.i = icmp eq i8 %7, 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 2
  %conv26.i = zext i16 %9 to i32
  br i1 %cmp20.i, label %if.then22.i, label %if.else28.i

if.then22.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  %10 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -126, ptr %tmp.i3.i, align 1
  %call.i4.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv26.i, ptr noundef nonnull %tmp.i3.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  br label %stb0899_postproc.exit

if.else28.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i5.i) #7
  %11 = ptrtoint ptr %tmp.i5.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %tmp.i5.i, align 1
  %call.i6.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv26.i, ptr noundef nonnull %tmp.i5.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i5.i) #7
  br label %stb0899_postproc.exit

stb0899_postproc.exit:                            ; preds = %if.else28.i, %if.then22.i, %entry.stb0899_postproc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stb0899_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %verbose, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end43_crit_edge, label %do.end

entry.do.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end, %entry.do.end43_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i8.i = alloca i8, align 1
  %tmp.i6.i = alloca i8, align 1
  %tmp.i3.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %agc.i = alloca [2 x i8], align 1
  %tmp.i576 = alloca i8, align 1
  %tmp.i574 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config1 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %verbose, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch = icmp ult i32 %7, 4
  br i1 %switch, label %entry.do.body45_crit_edge, label %do.end

entry.do.body45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #10
  br label %do.body45

do.body45:                                        ; preds = %do.end, %entry.do.body45_crit_edge
  %8 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %verbose, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch559 = icmp ult i32 %11, 4
  br i1 %switch559, label %do.body45.do.end98_crit_edge, label %do.end54

do.body45.do.end98_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98

do.end54:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.132) #10
  br label %do.end98

do.end98:                                         ; preds = %do.end54, %do.body45.do.end98_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp99.not589 = icmp eq i16 %15, -1
  br i1 %cmp99.not589, label %do.end98.do.body108_crit_edge, label %do.end98.for.body_crit_edge

do.end98.for.body_crit_edge:                      ; preds = %do.end98
  br label %for.body

do.end98.do.body108_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body108

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end98.for.body_crit_edge
  %16 = phi i16 [ %24, %for.body.for.body_crit_edge ], [ %15, %do.end98.for.body_crit_edge ]
  %17 = phi ptr [ %22, %for.body.for.body_crit_edge ], [ %13, %do.end98.for.body_crit_edge ]
  %i.0590 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end98.for.body_crit_edge ]
  %conv = zext i16 %16 to i32
  %data = getelementptr %struct.stb0899_s1_reg, ptr %17, i32 %i.0590, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tmp.i, align 1
  %call.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %inc = add i32 %i.0590, 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr %struct.stb0899_s1_reg, ptr %22, i32 %inc
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %cmp99.not = icmp eq i16 %24, -1
  br i1 %cmp99.not, label %for.body.do.body108_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.do.body108_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body108

do.body108:                                       ; preds = %for.body.do.body108_crit_edge, %do.end98.do.body108_crit_edge
  %25 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %verbose, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %switch562 = icmp ult i32 %28, 4
  br i1 %switch562, label %do.body108.do.end169_crit_edge, label %do.end119

do.body108.do.end169_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end169

do.end119:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.132) #10
  br label %do.end169

do.end169:                                        ; preds = %do.end119, %do.body108.do.end169_crit_edge
  %init_s2_demod = getelementptr inbounds %struct.stb0899_config, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %init_s2_demod to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_s2_demod, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %32)
  %cmp173.not591 = icmp eq i16 %32, -1
  br i1 %cmp173.not591, label %do.end169.do.body188_crit_edge, label %do.end169.for.body175_crit_edge

do.end169.for.body175_crit_edge:                  ; preds = %do.end169
  br label %for.body175

do.end169.do.body188_crit_edge:                   ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body188

for.body175:                                      ; preds = %for.body175.for.body175_crit_edge, %do.end169.for.body175_crit_edge
  %33 = phi i16 [ %42, %for.body175.for.body175_crit_edge ], [ %32, %do.end169.for.body175_crit_edge ]
  %34 = phi ptr [ %40, %for.body175.for.body175_crit_edge ], [ %30, %do.end169.for.body175_crit_edge ]
  %i.1592 = phi i32 [ %inc186, %for.body175.for.body175_crit_edge ], [ 0, %do.end169.for.body175_crit_edge ]
  %base_address = getelementptr %struct.stb0899_s2_reg, ptr %34, i32 %i.1592, i32 1
  %35 = ptrtoint ptr %base_address to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_address, align 4
  %data183 = getelementptr %struct.stb0899_s2_reg, ptr %34, i32 %i.1592, i32 2
  %37 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data183, align 4
  %call184 = call i32 @stb0899_write_s2reg(ptr noundef %1, i32 noundef 62460, i32 noundef %36, i16 noundef zeroext %33, i32 noundef %38)
  %inc186 = add i32 %i.1592, 1
  %39 = ptrtoint ptr %init_s2_demod to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_s2_demod, align 4
  %arrayidx171 = getelementptr %struct.stb0899_s2_reg, ptr %40, i32 %inc186
  %41 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx171, align 4
  %cmp173.not = icmp eq i16 %42, -1
  br i1 %cmp173.not, label %for.body175.do.body188_crit_edge, label %for.body175.for.body175_crit_edge

for.body175.for.body175_crit_edge:                ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body175

for.body175.do.body188_crit_edge:                 ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body188

do.body188:                                       ; preds = %for.body175.do.body188_crit_edge, %do.end169.do.body188_crit_edge
  %43 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %verbose, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %switch565 = icmp ult i32 %46, 4
  br i1 %switch565, label %do.body188.do.end249_crit_edge, label %do.end199

do.body188.do.end249_crit_edge:                   ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end249

do.end199:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.132) #10
  br label %do.end249

do.end249:                                        ; preds = %do.end199, %do.body188.do.end249_crit_edge
  %init_s1_demod = getelementptr inbounds %struct.stb0899_config, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %init_s1_demod to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_s1_demod, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %50)
  %cmp254.not593 = icmp eq i16 %50, -1
  br i1 %cmp254.not593, label %do.end249.do.body268_crit_edge, label %do.end249.for.body256_crit_edge

do.end249.for.body256_crit_edge:                  ; preds = %do.end249
  br label %for.body256

do.end249.do.body268_crit_edge:                   ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body268

for.body256:                                      ; preds = %for.body256.for.body256_crit_edge, %do.end249.for.body256_crit_edge
  %51 = phi i16 [ %59, %for.body256.for.body256_crit_edge ], [ %50, %do.end249.for.body256_crit_edge ]
  %52 = phi ptr [ %57, %for.body256.for.body256_crit_edge ], [ %48, %do.end249.for.body256_crit_edge ]
  %i.2594 = phi i32 [ %inc266, %for.body256.for.body256_crit_edge ], [ 0, %do.end249.for.body256_crit_edge ]
  %conv253 = zext i16 %51 to i32
  %data263 = getelementptr %struct.stb0899_s1_reg, ptr %52, i32 %i.2594, i32 1
  %53 = ptrtoint ptr %data263 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data263, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i574) #7
  %55 = ptrtoint ptr %tmp.i574 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %tmp.i574, align 1
  %call.i575 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv253, ptr noundef nonnull %tmp.i574, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i574) #7
  %inc266 = add i32 %i.2594, 1
  %56 = ptrtoint ptr %init_s1_demod to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_s1_demod, align 4
  %arrayidx251 = getelementptr %struct.stb0899_s1_reg, ptr %57, i32 %inc266
  %58 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx251, align 2
  %cmp254.not = icmp eq i16 %59, -1
  br i1 %cmp254.not, label %for.body256.do.body268_crit_edge, label %for.body256.for.body256_crit_edge

for.body256.for.body256_crit_edge:                ; preds = %for.body256
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body256

for.body256.do.body268_crit_edge:                 ; preds = %for.body256
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body268

do.body268:                                       ; preds = %for.body256.do.body268_crit_edge, %do.end249.do.body268_crit_edge
  %60 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %verbose, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %switch568 = icmp ult i32 %63, 4
  br i1 %switch568, label %do.body268.do.end329_crit_edge, label %do.end279

do.body268.do.end329_crit_edge:                   ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end329

do.end279:                                        ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #9
  %call281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.132) #10
  br label %do.end329

do.end329:                                        ; preds = %do.end279, %do.body268.do.end329_crit_edge
  %init_s2_fec = getelementptr inbounds %struct.stb0899_config, ptr %3, i32 0, i32 3
  %64 = ptrtoint ptr %init_s2_fec to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_s2_fec, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %67)
  %cmp334.not595 = icmp eq i16 %67, -1
  br i1 %cmp334.not595, label %do.end329.do.body350_crit_edge, label %do.end329.for.body336_crit_edge

do.end329.for.body336_crit_edge:                  ; preds = %do.end329
  br label %for.body336

do.end329.do.body350_crit_edge:                   ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body350

for.body336:                                      ; preds = %for.body336.for.body336_crit_edge, %do.end329.for.body336_crit_edge
  %68 = phi i16 [ %77, %for.body336.for.body336_crit_edge ], [ %67, %do.end329.for.body336_crit_edge ]
  %69 = phi ptr [ %75, %for.body336.for.body336_crit_edge ], [ %65, %do.end329.for.body336_crit_edge ]
  %i.3596 = phi i32 [ %inc348, %for.body336.for.body336_crit_edge ], [ 0, %do.end329.for.body336_crit_edge ]
  %base_address339 = getelementptr %struct.stb0899_s2_reg, ptr %69, i32 %i.3596, i32 1
  %70 = ptrtoint ptr %base_address339 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_address339, align 4
  %data345 = getelementptr %struct.stb0899_s2_reg, ptr %69, i32 %i.3596, i32 2
  %72 = ptrtoint ptr %data345 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data345, align 4
  %call346 = call i32 @stb0899_write_s2reg(ptr noundef %1, i32 noundef 64252, i32 noundef %71, i16 noundef zeroext %68, i32 noundef %73)
  %inc348 = add i32 %i.3596, 1
  %74 = ptrtoint ptr %init_s2_fec to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_s2_fec, align 4
  %arrayidx331 = getelementptr %struct.stb0899_s2_reg, ptr %75, i32 %inc348
  %76 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx331, align 4
  %cmp334.not = icmp eq i16 %77, -1
  br i1 %cmp334.not, label %for.body336.do.body350_crit_edge, label %for.body336.for.body336_crit_edge

for.body336.for.body336_crit_edge:                ; preds = %for.body336
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body336

for.body336.do.body350_crit_edge:                 ; preds = %for.body336
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body350

do.body350:                                       ; preds = %for.body336.do.body350_crit_edge, %do.end329.do.body350_crit_edge
  %78 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %verbose, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %81)
  %switch571 = icmp ult i32 %81, 4
  br i1 %switch571, label %do.body350.do.end411_crit_edge, label %do.end361

do.body350.do.end411_crit_edge:                   ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end411

do.end361:                                        ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #9
  %call363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.132) #10
  br label %do.end411

do.end411:                                        ; preds = %do.end361, %do.body350.do.end411_crit_edge
  %init_tst = getelementptr inbounds %struct.stb0899_config, ptr %3, i32 0, i32 4
  %82 = ptrtoint ptr %init_tst to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_tst, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %85)
  %cmp416.not597 = icmp eq i16 %85, -1
  br i1 %cmp416.not597, label %do.end411.for.end429_crit_edge, label %do.end411.for.body418_crit_edge

do.end411.for.body418_crit_edge:                  ; preds = %do.end411
  br label %for.body418

do.end411.for.end429_crit_edge:                   ; preds = %do.end411
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end429

for.body418:                                      ; preds = %for.body418.for.body418_crit_edge, %do.end411.for.body418_crit_edge
  %86 = phi i16 [ %94, %for.body418.for.body418_crit_edge ], [ %85, %do.end411.for.body418_crit_edge ]
  %87 = phi ptr [ %92, %for.body418.for.body418_crit_edge ], [ %83, %do.end411.for.body418_crit_edge ]
  %i.4598 = phi i32 [ %inc428, %for.body418.for.body418_crit_edge ], [ 0, %do.end411.for.body418_crit_edge ]
  %conv415 = zext i16 %86 to i32
  %data425 = getelementptr %struct.stb0899_s1_reg, ptr %87, i32 %i.4598, i32 1
  %88 = ptrtoint ptr %data425 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %data425, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i576) #7
  %90 = ptrtoint ptr %tmp.i576 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %tmp.i576, align 1
  %call.i577 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv415, ptr noundef nonnull %tmp.i576, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i576) #7
  %inc428 = add i32 %i.4598, 1
  %91 = ptrtoint ptr %init_tst to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_tst, align 4
  %arrayidx413 = getelementptr %struct.stb0899_s1_reg, ptr %92, i32 %inc428
  %93 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx413, align 2
  %cmp416.not = icmp eq i16 %94, -1
  br i1 %cmp416.not, label %for.body418.for.end429_crit_edge, label %for.body418.for.body418_crit_edge

for.body418.for.body418_crit_edge:                ; preds = %for.body418
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body418

for.body418.for.end429_crit_edge:                 ; preds = %for.body418
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end429

for.end429:                                       ; preds = %for.body418.for.end429_crit_edge, %do.end411.for.end429_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %agc.i) #7
  %95 = ptrtoint ptr %agc.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %agc.i, align 1, !annotation !807
  %96 = getelementptr inbounds [2 x i8], ptr %agc.i, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %96, align 1, !annotation !807
  %call.i578 = call i32 @stb0899_read_regs(ptr noundef %1, i32 noundef 62483, ptr noundef nonnull %agc.i, i32 noundef 2) #7
  %call.i.i.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61875) #7
  %add.i.i = add i32 %call.i.i.i, 1
  %98 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %config1, align 4
  %xtal_freq.i.i = getelementptr inbounds %struct.stb0899_config, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %xtal_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %xtal_freq.i.i, align 4
  %mul.i.i = mul i32 %101, %add.i.i
  %div1.i.i = udiv i32 %mul.i.i, 6
  %102 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %verbose, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %105)
  %switch.i.i = icmp ult i32 %105, 4
  br i1 %switch.i.i, label %for.end429.stb0899_init_calc.exit_crit_edge, label %do.end.i.i

for.end429.stb0899_init_calc.exit_crit_edge:      ; preds = %for.end429
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_init_calc.exit

do.end.i.i:                                       ; preds = %for.end429
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef %call.i.i.i, i32 noundef %div1.i.i) #10
  br label %stb0899_init_calc.exit

stb0899_init_calc.exit:                           ; preds = %do.end.i.i, %for.end429.stb0899_init_calc.exit_crit_edge
  %internal1.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4
  %t_agc1.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 18
  %106 = ptrtoint ptr %t_agc1.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %t_agc1.i, align 2
  %t_agc2.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 19
  %107 = ptrtoint ptr %t_agc2.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %t_agc2.i, align 4
  %108 = ptrtoint ptr %internal1.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %div1.i.i, ptr %internal1.i, align 4
  %div31.i = udiv i32 %mul.i.i, 393216
  %mclk.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 9
  %109 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %div31.i, ptr %mclk.i, align 4
  %call.i.i30.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62478) #7
  %and.i.i = and i32 %call.i.i30.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %cmp.not.i.i, i32 35, i32 20
  %rolloff.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 10
  %110 = ptrtoint ptr %rolloff.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %..i.i, ptr %rolloff.i, align 4
  %agc_gain.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 22
  %111 = ptrtoint ptr %agc_gain.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 8154, ptr %agc_gain.i, align 4
  %call5.i = call i32 @_stb0899_read_s2reg(ptr noundef %1, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296) #7
  %and.i = and i32 %call5.i, -134209537
  %112 = ptrtoint ptr %agc_gain.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %agc_gain.i, align 4
  %shl.i = shl i32 %113, 13
  %or.i = or i32 %shl.i, %and.i
  %call7.i = call i32 @stb0899_write_s2reg(ptr noundef %1, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296, i32 noundef %or.i) #7
  %call8.i = call i32 @_stb0899_read_s2reg(ptr noundef %1, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3236) #7
  %and9.i = and i32 %call8.i, 3
  %rrc_alpha.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 27
  %114 = ptrtoint ptr %rrc_alpha.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and9.i, ptr %rrc_alpha.i, align 4
  %center_freq.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 23
  %115 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %center_freq.i, align 4
  %av_frame_coarse.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 24
  %116 = ptrtoint ptr %av_frame_coarse.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 10, ptr %av_frame_coarse.i, align 4
  %av_frame_fine.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 25
  %117 = ptrtoint ptr %av_frame_fine.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 20, ptr %av_frame_fine.i, align 4
  %step_size.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 26
  %118 = ptrtoint ptr %step_size.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 2, ptr %step_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %agc.i) #7
  %call.i.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61601) #7
  %119 = trunc i32 %call.i.i to i8
  %conv2.i = and i8 %119, -33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %120 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv2.i, ptr %tmp.i.i, align 1
  %call.i1.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61601, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %call.i2.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61600) #7
  %121 = trunc i32 %call.i2.i to i8
  %conv9.i = or i8 %121, 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  %122 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv9.i, ptr %tmp.i3.i, align 1
  %call.i4.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61600, ptr noundef nonnull %tmp.i3.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  %call.i5.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61600) #7
  %123 = trunc i32 %call.i5.i to i8
  %conv16.i = and i8 %123, -65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i6.i) #7
  %124 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv16.i, ptr %tmp.i6.i, align 1
  %call.i7.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61600, ptr noundef nonnull %tmp.i6.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i6.i) #7
  %call.i.i.i579 = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61875) #7
  %add.i.i580 = add i32 %call.i.i.i579, 1
  %125 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %config1, align 4
  %xtal_freq.i.i582 = getelementptr inbounds %struct.stb0899_config, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %xtal_freq.i.i582 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %xtal_freq.i.i582, align 4
  %mul.i.i583 = mul i32 %128, %add.i.i580
  %129 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %verbose, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %132)
  %switch.i.i585 = icmp ult i32 %132, 4
  br i1 %switch.i.i585, label %stb0899_init_calc.exit.stb0899_diseqc_init.exit_crit_edge, label %do.end.i.i588

stb0899_init_calc.exit.stb0899_diseqc_init.exit_crit_edge: ; preds = %stb0899_init_calc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_diseqc_init.exit

do.end.i.i588:                                    ; preds = %stb0899_init_calc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %div1.i.i586 = udiv i32 %mul.i.i583, 6
  %call5.i.i587 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef %call.i.i.i579, i32 noundef %div1.i.i586) #10
  br label %stb0899_diseqc_init.exit

stb0899_diseqc_init.exit:                         ; preds = %do.end.i.i588, %stb0899_init_calc.exit.stb0899_diseqc_init.exit_crit_edge
  %div.i = udiv i32 %mul.i.i583, 4224000
  %conv19.i = trunc i32 %div.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i8.i) #7
  %133 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv19.i, ptr %tmp.i8.i, align 1
  %call.i9.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61609, ptr noundef nonnull %tmp.i8.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i8.i) #7
  %rx_freq.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 7
  %134 = ptrtoint ptr %rx_freq.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 20000, ptr %rx_freq.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i5.i = alloca i8, align 1
  %tmp.i3.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %verbose, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end43_crit_edge, label %do.end

entry.do.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end, %entry.do.end43_crit_edge
  %config1.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config1.i, align 4
  %postproc2.i = getelementptr inbounds %struct.stb0899_config, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %postproc2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %postproc2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end43.stb0899_postproc.exit_crit_edge, label %if.then.i

do.end43.stb0899_postproc.exit_crit_edge:         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_postproc.exit

if.then.i:                                        ; preds = %do.end43
  %level18.i = getelementptr %struct.stb0899_postproc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %level18.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %level18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp20.i = icmp eq i8 %11, 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %9, align 2
  %conv26.i = zext i16 %13 to i32
  br i1 %cmp20.i, label %if.then22.i, label %if.else28.i

if.then22.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  %14 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -126, ptr %tmp.i3.i, align 1
  %call.i4.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv26.i, ptr noundef nonnull %tmp.i3.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  br label %stb0899_postproc.exit

if.else28.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i5.i) #7
  %15 = ptrtoint ptr %tmp.i5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %tmp.i5.i, align 1
  %call.i6.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv26.i, ptr noundef nonnull %tmp.i5.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i5.i) #7
  br label %stb0899_postproc.exit

stb0899_postproc.exit:                            ; preds = %if.else28.i, %if.then22.i, %do.end43.stb0899_postproc.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stb0899_frontend_algo(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %verbose, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end44_crit_edge, label %do.end

entry.do.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.225) #10
  br label %do.end44

do.end44:                                         ; preds = %do.end, %entry.do.end44_crit_edge
  %srate = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srate, align 4
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %8 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %symbol_rate, align 4
  %freq = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq, align 4
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %p, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %tmp.i1.i777 = alloca i8, align 1
  %tmp.i.i778 = alloca i8, align 1
  %tmp.i1.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  %delsys = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %delsys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delsys, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.665)
  switch i32 %4, label %do.body539 [
    i32 5, label %entry.do.body_crit_edge
    i32 4, label %entry.do.body_crit_edge792
    i32 6, label %do.body187
  ]

entry.do.body_crit_edge792:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge792
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %verbose, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %switch = icmp ult i32 %9, 4
  br i1 %switch, label %do.body.do.end44_crit_edge, label %do.end

do.body.do.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236) #10
  br label %do.end44

do.end44:                                         ; preds = %do.end, %do.body.do.end44_crit_edge
  %lock = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.end44.cleanup_crit_edge, label %if.then45

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then45:                                        ; preds = %do.end44
  %call.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62733) #7
  %12 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool48.not = icmp eq i32 %12, 0
  br i1 %tobool48.not, label %if.then45.cleanup_crit_edge, label %do.body50

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body50:                                        ; preds = %if.then45
  %13 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %verbose, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %switch750 = icmp ult i32 %16, 4
  br i1 %switch750, label %do.body50.do.end111_crit_edge, label %do.end61

do.body50.do.end111_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111

do.end61:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.236) #10
  br label %do.end111

do.end111:                                        ; preds = %do.end61, %do.body50.do.end111_crit_edge
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %or = or i32 %18, 19
  store i32 %or, ptr %status, align 4
  %call.i774 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62860) #7
  %and116 = and i32 %call.i774, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.end111.cleanup_crit_edge, label %do.body119

do.end111.cleanup_crit_edge:                      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body119:                                       ; preds = %do.end111
  %19 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %verbose, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %switch753 = icmp ult i32 %22, 4
  br i1 %switch753, label %do.body119.do.end180_crit_edge, label %do.end130

do.body119.do.end180_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end180

do.end130:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.236) #10
  br label %do.end180

do.end180:                                        ; preds = %do.end130, %do.body119.do.end180_crit_edge
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %or181 = or i32 %24, 12
  store i32 %or181, ptr %status, align 4
  %config1.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config1.i, align 4
  %postproc2.i = getelementptr inbounds %struct.stb0899_config, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %postproc2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %postproc2.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.end180.cleanup_crit_edge, label %if.then.i

do.end180.cleanup_crit_edge:                      ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %do.end180
  %arrayidx17.i = getelementptr %struct.stb0899_postproc, ptr %28, i32 1
  %level18.i = getelementptr %struct.stb0899_postproc, ptr %28, i32 1, i32 1
  %29 = ptrtoint ptr %level18.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %level18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp20.i = icmp eq i8 %30, 1
  %31 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx17.i, align 2
  %conv26.i = zext i16 %32 to i32
  br i1 %cmp20.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %33 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv26.i, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i) #7
  %34 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -126, ptr %tmp.i1.i, align 1
  %call.i2.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv26.i, ptr noundef nonnull %tmp.i1.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i) #7
  br label %cleanup

do.body187:                                       ; preds = %entry
  %verbose188 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %verbose188 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %verbose188, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %switch756 = icmp ult i32 %38, 4
  br i1 %switch756, label %do.body187.do.end248_crit_edge, label %do.end198

do.body187.do.end248_crit_edge:                   ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end248

do.end198:                                        ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #9
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.236) #10
  br label %do.end248

do.end248:                                        ; preds = %do.end198, %do.body187.do.end248_crit_edge
  %lock249 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  %39 = ptrtoint ptr %lock249 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lock249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool250.not = icmp eq i32 %40, 0
  br i1 %tobool250.not, label %do.end248.cleanup_crit_edge, label %if.then251

do.end248.cleanup_crit_edge:                      ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then251:                                       ; preds = %do.end248
  %call252 = tail call i32 @_stb0899_read_s2reg(ptr noundef %1, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3264)
  %41 = and i32 %call252, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %.not = icmp eq i32 %41, 3
  br i1 %.not, label %if.then263, label %if.then251.cleanup_crit_edge

if.then251.cleanup_crit_edge:                     ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then263:                                       ; preds = %if.then251
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  %or264 = or i32 %43, 2
  store i32 %or264, ptr %status, align 4
  %44 = ptrtoint ptr %verbose188 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %verbose188, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %switch759 = icmp ult i32 %47, 4
  br i1 %switch759, label %if.then263.do.end326_crit_edge, label %do.end276

if.then263.do.end326_crit_edge:                   ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end326

do.end276:                                        ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #9
  %call278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.236) #10
  br label %do.end326

do.end326:                                        ; preds = %do.end276, %if.then263.do.end326_crit_edge
  %call.i775 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 63001) #7
  %call6.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 63231) #7
  %48 = and i32 %call.i775, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool332.not = icmp eq i32 %48, 0
  br i1 %tobool332.not, label %do.end326.if.end397_crit_edge, label %if.then333

do.end326.if.end397_crit_edge:                    ; preds = %do.end326
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end397

if.then333:                                       ; preds = %do.end326
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or334 = or i32 %50, 16
  store i32 %or334, ptr %status, align 4
  %51 = ptrtoint ptr %verbose188 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %verbose188, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %switch762 = icmp ult i32 %54, 4
  br i1 %switch762, label %if.then333.if.end397_crit_edge, label %do.end346

if.then333.if.end397_crit_edge:                   ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end397

do.end346:                                        ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #9
  %call348 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.236) #10
  br label %if.end397

if.end397:                                        ; preds = %do.end346, %if.then333.if.end397_crit_edge, %do.end326.if.end397_crit_edge
  %55 = and i32 %call.i775, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool401.not = icmp eq i32 %55, 0
  br i1 %tobool401.not, label %if.end397.if.end466_crit_edge, label %if.then402

if.end397.if.end466_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end466

if.then402:                                       ; preds = %if.end397
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status, align 4
  %or403 = or i32 %57, 4
  store i32 %or403, ptr %status, align 4
  %58 = ptrtoint ptr %verbose188 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %verbose188, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %switch765 = icmp ult i32 %61, 4
  br i1 %switch765, label %if.then402.if.end466_crit_edge, label %do.end415

if.then402.if.end466_crit_edge:                   ; preds = %if.then402
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end466

do.end415:                                        ; preds = %if.then402
  call void @__sanitizer_cov_trace_pc() #9
  %call417 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.236) #10
  br label %if.end466

if.end466:                                        ; preds = %do.end415, %if.then402.if.end466_crit_edge, %if.end397.if.end466_crit_edge
  %62 = and i32 %call.i775, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool470.not = icmp eq i32 %62, 0
  br i1 %tobool470.not, label %if.end466.cleanup_crit_edge, label %if.then471

if.end466.cleanup_crit_edge:                      ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then471:                                       ; preds = %if.end466
  %63 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %status, align 4
  %or472 = or i32 %64, 8
  store i32 %or472, ptr %status, align 4
  %65 = ptrtoint ptr %verbose188 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %verbose188, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %switch768 = icmp ult i32 %68, 4
  br i1 %switch768, label %if.then471.do.end534_crit_edge, label %do.end484

if.then471.do.end534_crit_edge:                   ; preds = %if.then471
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end534

do.end484:                                        ; preds = %if.then471
  call void @__sanitizer_cov_trace_pc() #9
  %call486 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.236) #10
  br label %do.end534

do.end534:                                        ; preds = %do.end484, %if.then471.do.end534_crit_edge
  %config1.i779 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %config1.i779 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %config1.i779, align 4
  %postproc2.i780 = getelementptr inbounds %struct.stb0899_config, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %postproc2.i780 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %postproc2.i780, align 4
  %tobool.not.i781 = icmp eq ptr %72, null
  br i1 %tobool.not.i781, label %do.end534.cleanup_crit_edge, label %if.then.i786

do.end534.cleanup_crit_edge:                      ; preds = %do.end534
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i786:                                     ; preds = %do.end534
  %arrayidx17.i782 = getelementptr %struct.stb0899_postproc, ptr %72, i32 1
  %level18.i783 = getelementptr %struct.stb0899_postproc, ptr %72, i32 1, i32 1
  %73 = ptrtoint ptr %level18.i783 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %level18.i783, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp20.i784 = icmp eq i8 %74, 1
  %75 = ptrtoint ptr %arrayidx17.i782 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx17.i782, align 2
  %conv26.i785 = zext i16 %76 to i32
  br i1 %cmp20.i784, label %if.then6.i788, label %if.else.i790

if.then6.i788:                                    ; preds = %if.then.i786
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i778) #7
  %77 = ptrtoint ptr %tmp.i.i778 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %tmp.i.i778, align 1
  %call.i.i787 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv26.i785, ptr noundef nonnull %tmp.i.i778, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i778) #7
  br label %cleanup

if.else.i790:                                     ; preds = %if.then.i786
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i777) #7
  %78 = ptrtoint ptr %tmp.i1.i777 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -126, ptr %tmp.i1.i777, align 1
  %call.i2.i789 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef %conv26.i785, ptr noundef nonnull %tmp.i1.i777, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i777) #7
  br label %cleanup

do.body539:                                       ; preds = %entry
  %verbose540 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %verbose540 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %verbose540, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %switch771 = icmp ult i32 %82, 4
  br i1 %switch771, label %do.body539.cleanup_crit_edge, label %do.end550

do.body539.cleanup_crit_edge:                     ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end550:                                        ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #9
  %call552 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.236) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end550, %do.body539.cleanup_crit_edge, %if.else.i790, %if.then6.i788, %do.end534.cleanup_crit_edge, %if.end466.cleanup_crit_edge, %if.then251.cleanup_crit_edge, %do.end248.cleanup_crit_edge, %if.else.i, %if.then6.i, %do.end180.cleanup_crit_edge, %do.end111.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %do.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end550 ], [ 0, %do.end248.cleanup_crit_edge ], [ 0, %if.end466.cleanup_crit_edge ], [ 0, %if.then251.cleanup_crit_edge ], [ 0, %do.end44.cleanup_crit_edge ], [ 0, %do.end111.cleanup_crit_edge ], [ 0, %if.then45.cleanup_crit_edge ], [ 0, %do.end180.cleanup_crit_edge ], [ 0, %if.then6.i ], [ 0, %if.else.i ], [ 0, %do.end534.cleanup_crit_edge ], [ 0, %if.then6.i788 ], [ 0, %if.else.i790 ], [ -22, %do.body539.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ber, align 4
  %delsys = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %delsys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delsys, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.666)
  switch i32 %4, label %do.body [
    i32 5, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge133
    i32 6, label %sw.bb16
  ]

entry.sw.bb_crit_edge133:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge133
  %lock = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %call.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62757) #7
  %call.i130 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62756) #7
  %conv4 = shl i32 %call.i130, 8
  %shl = and i32 %conv4, 65280
  %conv5 = and i32 %call.i, 255
  %or = or i32 %shl, %conv5
  %8 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %ber, align 4
  %v_status = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 32
  %9 = ptrtoint ptr %v_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %v_status, align 4
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.then8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul nuw nsw i32 %or, 9766
  %12 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %ber, align 4
  %err_ctrl = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 33
  %13 = ptrtoint ptr %err_ctrl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %err_ctrl, align 1
  %15 = shl i8 %14, 1
  %16 = and i8 %15, 14
  %mul12 = zext i8 %16 to i32
  %notmask124 = shl nsw i32 -1, %mul12
  %add = xor i32 %notmask124, -1
  %div = udiv i32 %mul, %add
  %div14125 = lshr i32 %div, 3
  store i32 %div14125, ptr %ber, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %lock17 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  %17 = ptrtoint ptr %lock17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lock17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %sw.bb16.cleanup_crit_edge, label %if.then19

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %call.i131 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62757) #7
  %call.i132 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62756) #7
  %conv24 = shl i32 %call.i132, 8
  %shl25 = and i32 %conv24, 65280
  %conv26 = and i32 %call.i131, 255
  %or27 = or i32 %shl25, %conv26
  %mul28 = mul i32 %or27, 10000000
  %19 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul28, ptr %ber, align 4
  %err_ctrl29 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 33
  %20 = ptrtoint ptr %err_ctrl29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %err_ctrl29, align 1
  %22 = shl i8 %21, 1
  %23 = and i8 %22, 14
  %narrow = add nuw nsw i8 %23, 4
  %add34 = zext i8 %narrow to i32
  %notmask = shl nsw i32 -1, %add34
  %add36 = xor i32 %notmask, -1
  %div37 = udiv i32 %mul28, %add36
  store i32 %div37, ptr %ber, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %verbose, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %switch = icmp ult i32 %27, 4
  br i1 %switch, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.342) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.then19, %sw.bb16.cleanup_crit_edge, %if.then8, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb16.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.then.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %strength, align 2
  %delsys = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %delsys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delsys, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.667)
  switch i32 %4, label %do.body158 [
    i32 5, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge334
    i32 6, label %sw.bb75
  ]

entry.sw.bb_crit_edge334:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge334
  %lock = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %call.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62733) #7
  %8 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %call.i299 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62510) #7
  %sext = shl i32 %call.i299, 24
  %conv7 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %sext)
  %cmp4.not.i.not = icmp eq i32 %sext, 2130706432
  br i1 %cmp4.not.i.not, label %if.then3.stb0899_table_lookup.exit_crit_edge, label %if.then3.while.body.i_crit_edge

if.then3.while.body.i_crit_edge:                  ; preds = %if.then3
  br label %while.body.i

if.then3.stb0899_table_lookup.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_table_lookup.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then3.while.body.i_crit_edge
  %min.069.i = phi i32 [ %min.1.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.then3.while.body.i_crit_edge ]
  %max.addr.068.i = phi i32 [ %max.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ 30, %if.then3.while.body.i_crit_edge ]
  %add.i = add i32 %max.addr.068.i, %min.069.i
  %div.i = sdiv i32 %add.i, 2
  %read11.i = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %min.069.i, i32 1
  %9 = ptrtoint ptr %read11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %read11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv7)
  %cmp12.not.i = icmp sgt i32 %10, %conv7
  br i1 %cmp12.not.i, label %while.body.i.if.else17.i_crit_edge, label %land.lhs.true.i

while.body.i.if.else17.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %read14.i = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %div.i, i32 1
  %11 = ptrtoint ptr %read14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv7)
  %cmp15.i = icmp sgt i32 %12, %conv7
  br i1 %cmp15.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else17.i_crit_edge

land.lhs.true.i.if.else17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else17.i:                                      ; preds = %land.lhs.true.i.if.else17.i_crit_edge, %while.body.i.if.else17.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else17.i, %land.lhs.true.i.if.end.i_crit_edge
  %max.addr.1.i = phi i32 [ %max.addr.068.i, %if.else17.i ], [ %div.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %min.1.i = phi i32 [ %div.i, %if.else17.i ], [ %min.069.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %sub.i = sub i32 %max.addr.1.i, %min.1.i
  %cmp9.i = icmp sgt i32 %sub.i, 1
  br i1 %cmp9.i, label %if.end.i.while.body.i_crit_edge, label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18.i = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %min.1.i
  %read19.i = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %min.1.i, i32 1
  %13 = ptrtoint ptr %read19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read19.i, align 4
  %sub20.i = sub i32 %conv7, %14
  %arrayidx21.i = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %max.addr.1.i
  %15 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx21.i, align 4
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18.i, align 4
  %sub25.i = sub i32 %16, %18
  %mul.i = mul i32 %sub25.i, %sub20.i
  %read27.i = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %max.addr.1.i, i32 1
  %19 = ptrtoint ptr %read27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read27.i, align 4
  %sub30.i = sub i32 %20, %14
  %div31.i = sdiv i32 %mul.i, %sub30.i
  %add34.i = add i32 %div31.i, %18
  %phi.cast332 = trunc i32 %add34.i to i16
  %phi.bo333 = add i16 %phi.cast332, 750
  br label %stb0899_table_lookup.exit

stb0899_table_lookup.exit:                        ; preds = %while.end.i, %if.then3.stb0899_table_lookup.exit_crit_edge
  %res.0.i = phi i16 [ %phi.bo333, %while.end.i ], [ 1250, %if.then3.stb0899_table_lookup.exit_crit_edge ]
  %21 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %res.0.i, ptr %strength, align 2
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %verbose, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %switch = icmp ult i32 %25, 4
  br i1 %switch, label %stb0899_table_lookup.exit.cleanup_crit_edge, label %do.end

stb0899_table_lookup.exit.cleanup_crit_edge:      ; preds = %stb0899_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %stb0899_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and18 = and i32 %call.i299, 255
  %conv19 = zext i16 %res.0.i to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.350, i32 noundef %and18, i32 noundef %conv19) #10
  br label %cleanup

sw.bb75:                                          ; preds = %entry
  %lock76 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  %26 = ptrtoint ptr %lock76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lock76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool77.not = icmp eq i32 %27, 0
  br i1 %tobool77.not, label %sw.bb75.cleanup_crit_edge, label %if.then78

sw.bb75.cleanup_crit_edge:                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then78:                                        ; preds = %sw.bb75
  %call79 = tail call i32 @_stb0899_read_s2reg(ptr noundef %1, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3316)
  %and81 = and i32 %call79, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %and81)
  %cmp4.not.i300.not = icmp eq i32 %and81, 16383
  br i1 %cmp4.not.i300.not, label %if.then78.stb0899_table_lookup.exit331_crit_edge, label %if.then78.while.body.i309_crit_edge

if.then78.while.body.i309_crit_edge:              ; preds = %if.then78
  br label %while.body.i309

if.then78.stb0899_table_lookup.exit331_crit_edge: ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_table_lookup.exit331

while.body.i309:                                  ; preds = %if.end.i318.while.body.i309_crit_edge, %if.then78.while.body.i309_crit_edge
  %min.069.i303 = phi i32 [ %min.1.i315, %if.end.i318.while.body.i309_crit_edge ], [ 0, %if.then78.while.body.i309_crit_edge ]
  %max.addr.068.i304 = phi i32 [ %max.addr.1.i314, %if.end.i318.while.body.i309_crit_edge ], [ 23, %if.then78.while.body.i309_crit_edge ]
  %add.i305 = add i32 %max.addr.068.i304, %min.069.i303
  %div.i306 = sdiv i32 %add.i305, 2
  %read11.i307 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %min.069.i303, i32 1
  %28 = ptrtoint ptr %read11.i307 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %read11.i307, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %and81)
  %cmp12.not.i308 = icmp sgt i32 %29, %and81
  br i1 %cmp12.not.i308, label %while.body.i309.if.else17.i313_crit_edge, label %land.lhs.true.i312

while.body.i309.if.else17.i313_crit_edge:         ; preds = %while.body.i309
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i313

land.lhs.true.i312:                               ; preds = %while.body.i309
  %read14.i310 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %div.i306, i32 1
  %30 = ptrtoint ptr %read14.i310 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %read14.i310, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %and81)
  %cmp15.i311 = icmp sgt i32 %31, %and81
  br i1 %cmp15.i311, label %land.lhs.true.i312.if.end.i318_crit_edge, label %land.lhs.true.i312.if.else17.i313_crit_edge

land.lhs.true.i312.if.else17.i313_crit_edge:      ; preds = %land.lhs.true.i312
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i313

land.lhs.true.i312.if.end.i318_crit_edge:         ; preds = %land.lhs.true.i312
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i318

if.else17.i313:                                   ; preds = %land.lhs.true.i312.if.else17.i313_crit_edge, %while.body.i309.if.else17.i313_crit_edge
  br label %if.end.i318

if.end.i318:                                      ; preds = %if.else17.i313, %land.lhs.true.i312.if.end.i318_crit_edge
  %max.addr.1.i314 = phi i32 [ %max.addr.068.i304, %if.else17.i313 ], [ %div.i306, %land.lhs.true.i312.if.end.i318_crit_edge ]
  %min.1.i315 = phi i32 [ %div.i306, %if.else17.i313 ], [ %min.069.i303, %land.lhs.true.i312.if.end.i318_crit_edge ]
  %sub.i316 = sub i32 %max.addr.1.i314, %min.1.i315
  %cmp9.i317 = icmp sgt i32 %sub.i316, 1
  br i1 %cmp9.i317, label %if.end.i318.while.body.i309_crit_edge, label %while.end.i329

if.end.i318.while.body.i309_crit_edge:            ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i309

while.end.i329:                                   ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18.i319 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %min.1.i315
  %read19.i320 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %min.1.i315, i32 1
  %32 = ptrtoint ptr %read19.i320 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %read19.i320, align 4
  %sub20.i321 = sub i32 %and81, %33
  %arrayidx21.i322 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %max.addr.1.i314
  %34 = ptrtoint ptr %arrayidx21.i322 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx21.i322, align 4
  %36 = ptrtoint ptr %arrayidx18.i319 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx18.i319, align 4
  %sub25.i323 = sub i32 %35, %37
  %mul.i324 = mul i32 %sub25.i323, %sub20.i321
  %read27.i325 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %max.addr.1.i314, i32 1
  %38 = ptrtoint ptr %read27.i325 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %read27.i325, align 4
  %sub30.i326 = sub i32 %39, %33
  %div31.i327 = sdiv i32 %mul.i324, %sub30.i326
  %add34.i328 = add i32 %div31.i327, %37
  %phi.cast = trunc i32 %add34.i328 to i16
  %phi.bo = add i16 %phi.cast, 950
  br label %stb0899_table_lookup.exit331

stb0899_table_lookup.exit331:                     ; preds = %while.end.i329, %if.then78.stb0899_table_lookup.exit331_crit_edge
  %res.0.i330 = phi i16 [ %phi.bo, %while.end.i329 ], [ 0, %if.then78.stb0899_table_lookup.exit331_crit_edge ]
  %40 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %res.0.i330, ptr %strength, align 2
  %verbose88 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %verbose88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %verbose88, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %switch293 = icmp ult i32 %44, 4
  br i1 %switch293, label %stb0899_table_lookup.exit331.cleanup_crit_edge, label %do.end98

stb0899_table_lookup.exit331.cleanup_crit_edge:   ; preds = %stb0899_table_lookup.exit331
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end98:                                         ; preds = %stb0899_table_lookup.exit331
  call void @__sanitizer_cov_trace_pc() #9
  %conv101 = zext i16 %res.0.i330 to i32
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.350, i32 noundef %and81, i32 noundef %conv101) #10
  br label %cleanup

do.body158:                                       ; preds = %entry
  %verbose159 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %verbose159 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %verbose159, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %switch296 = icmp ult i32 %48, 4
  br i1 %switch296, label %do.body158.cleanup_crit_edge, label %do.end169

do.body158.cleanup_crit_edge:                     ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end169:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.350) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end169, %do.body158.cleanup_crit_edge, %do.end98, %stb0899_table_lookup.exit331.cleanup_crit_edge, %sw.bb75.cleanup_crit_edge, %do.end, %stb0899_table_lookup.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end169 ], [ 0, %sw.bb75.cleanup_crit_edge ], [ 0, %do.end98 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %stb0899_table_lookup.exit.cleanup_crit_edge ], [ 0, %stb0899_table_lookup.exit331.cleanup_crit_edge ], [ -22, %do.body158.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !807
  %3 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !807
  %5 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %snr, align 2
  %call.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62733) #7
  %delsys = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %delsys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delsys, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.668)
  switch i32 %7, label %do.body170 [
    i32 5, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge400
    i32 6, label %sw.bb84
  ]

entry.sw.bb_crit_edge400:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge400
  %lock = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %11 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.then3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %sw.bb
  %call4 = call i32 @stb0899_read_regs(ptr noundef %1, i32 noundef 62528, ptr noundef nonnull %buf, i32 noundef 2)
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 1
  %conv = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  %conv6 = zext i8 %15 to i32
  %or = or i32 %shl, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2600, i32 %or)
  %cmp.i = icmp ult i32 %or, 2600
  br i1 %cmp.i, label %if.then3.stb0899_table_lookup.exit_crit_edge, label %if.else.i

if.then3.stb0899_table_lookup.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_table_lookup.exit

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %or)
  %cmp4.not.i = icmp ult i32 %or, 9600
  br i1 %cmp4.not.i, label %if.else.i.while.body.i_crit_edge, label %if.else.i.stb0899_table_lookup.exit_crit_edge

if.else.i.stb0899_table_lookup.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_table_lookup.exit

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.else.i.while.body.i_crit_edge
  %min.069.i = phi i32 [ %min.1.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.else.i.while.body.i_crit_edge ]
  %max.addr.068.i = phi i32 [ %max.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ 19, %if.else.i.while.body.i_crit_edge ]
  %add.i = add i32 %max.addr.068.i, %min.069.i
  %div.i = sdiv i32 %add.i, 2
  %read11.i = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %min.069.i, i32 1
  %16 = ptrtoint ptr %read11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %or)
  %cmp12.not.i = icmp sgt i32 %17, %or
  br i1 %cmp12.not.i, label %while.body.i.if.else17.i_crit_edge, label %land.lhs.true.i

while.body.i.if.else17.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %read14.i = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %div.i, i32 1
  %18 = ptrtoint ptr %read14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %read14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %or)
  %cmp15.i = icmp sgt i32 %19, %or
  br i1 %cmp15.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else17.i_crit_edge

land.lhs.true.i.if.else17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else17.i:                                      ; preds = %land.lhs.true.i.if.else17.i_crit_edge, %while.body.i.if.else17.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else17.i, %land.lhs.true.i.if.end.i_crit_edge
  %max.addr.1.i = phi i32 [ %max.addr.068.i, %if.else17.i ], [ %div.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %min.1.i = phi i32 [ %div.i, %if.else17.i ], [ %min.069.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %sub.i = sub i32 %max.addr.1.i, %min.1.i
  %cmp9.i = icmp sgt i32 %sub.i, 1
  br i1 %cmp9.i, label %if.end.i.while.body.i_crit_edge, label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18.i = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %min.1.i
  %read19.i = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %min.1.i, i32 1
  %20 = ptrtoint ptr %read19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read19.i, align 4
  %sub20.i = sub i32 %or, %21
  %arrayidx21.i = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %max.addr.1.i
  %22 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21.i, align 4
  %24 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18.i, align 4
  %sub25.i = sub i32 %23, %25
  %mul.i = mul i32 %sub25.i, %sub20.i
  %read27.i = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %max.addr.1.i, i32 1
  %26 = ptrtoint ptr %read27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read27.i, align 4
  %sub30.i = sub i32 %27, %21
  %div31.i = sdiv i32 %mul.i, %sub30.i
  %add34.i = add i32 %div31.i, %25
  br label %stb0899_table_lookup.exit

stb0899_table_lookup.exit:                        ; preds = %while.end.i, %if.else.i.stb0899_table_lookup.exit_crit_edge, %if.then3.stb0899_table_lookup.exit_crit_edge
  %res.0.i = phi i32 [ %add34.i, %while.end.i ], [ 200, %if.then3.stb0899_table_lookup.exit_crit_edge ], [ 15, %if.else.i.stb0899_table_lookup.exit_crit_edge ]
  %conv8 = trunc i32 %res.0.i to i16
  %28 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv8, ptr %snr, align 2
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %verbose, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %switch = icmp ult i32 %32, 4
  br i1 %switch, label %stb0899_table_lookup.exit.cleanup_crit_edge, label %do.end

stb0899_table_lookup.exit.cleanup_crit_edge:      ; preds = %stb0899_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %stb0899_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv19 = and i32 %res.0.i, 65535
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.380, ptr noundef nonnull @.str.381, i32 noundef %conv, i32 noundef %conv6, i32 noundef %or, i32 noundef %conv19) #10
  br label %cleanup

sw.bb84:                                          ; preds = %entry
  %lock85 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  %33 = ptrtoint ptr %lock85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lock85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool86.not = icmp eq i32 %34, 0
  br i1 %tobool86.not, label %sw.bb84.cleanup_crit_edge, label %if.then87

sw.bb84.cleanup_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87:                                        ; preds = %sw.bb84
  %call88 = tail call i32 @_stb0899_read_s2reg(ptr noundef %1, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3296)
  %shr89 = lshr i32 %call88, 3
  %and90 = and i32 %shr89, 255
  %call91 = tail call i32 @_stb0899_read_s2reg(ptr noundef %1, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3284)
  %shr92 = lshr i32 %call91, 7
  %and93 = and i32 %shr92, 524287
  %35 = zext i32 %and93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.669)
  switch i32 %and93, label %if.else101 [
    i32 1, label %if.then87.if.end105_crit_edge
    i32 2, label %if.then100
  ]

if.then87.if.end105_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then100:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.else101:                                       ; preds = %if.then87
  %mul = mul nuw nsw i32 %and90, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 25410, i32 %mul)
  %cmp4.not.i332 = icmp ult i32 %mul, 25410
  br i1 %cmp4.not.i332, label %if.else101.while.body.i342_crit_edge, label %if.else101.while.body.i377.preheader_crit_edge

if.else101.while.body.i377.preheader_crit_edge:   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i377.preheader

if.else101.while.body.i342_crit_edge:             ; preds = %if.else101
  br label %while.body.i342

while.body.i342:                                  ; preds = %if.end.i351.while.body.i342_crit_edge, %if.else101.while.body.i342_crit_edge
  %min.069.i336 = phi i32 [ %min.1.i348, %if.end.i351.while.body.i342_crit_edge ], [ 0, %if.else101.while.body.i342_crit_edge ]
  %max.addr.068.i337 = phi i32 [ %max.addr.1.i347, %if.end.i351.while.body.i342_crit_edge ], [ 38, %if.else101.while.body.i342_crit_edge ]
  %add.i338 = add i32 %max.addr.068.i337, %min.069.i336
  %div.i339 = sdiv i32 %add.i338, 2
  %read11.i340 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %min.069.i336, i32 1
  %36 = ptrtoint ptr %read11.i340 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %read11.i340, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %mul)
  %cmp12.not.i341 = icmp sgt i32 %37, %mul
  br i1 %cmp12.not.i341, label %while.body.i342.if.else17.i346_crit_edge, label %land.lhs.true.i345

while.body.i342.if.else17.i346_crit_edge:         ; preds = %while.body.i342
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i346

land.lhs.true.i345:                               ; preds = %while.body.i342
  %read14.i343 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %div.i339, i32 1
  %38 = ptrtoint ptr %read14.i343 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %read14.i343, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %mul)
  %cmp15.i344 = icmp sgt i32 %39, %mul
  br i1 %cmp15.i344, label %land.lhs.true.i345.if.end.i351_crit_edge, label %land.lhs.true.i345.if.else17.i346_crit_edge

land.lhs.true.i345.if.else17.i346_crit_edge:      ; preds = %land.lhs.true.i345
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i346

land.lhs.true.i345.if.end.i351_crit_edge:         ; preds = %land.lhs.true.i345
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i351

if.else17.i346:                                   ; preds = %land.lhs.true.i345.if.else17.i346_crit_edge, %while.body.i342.if.else17.i346_crit_edge
  br label %if.end.i351

if.end.i351:                                      ; preds = %if.else17.i346, %land.lhs.true.i345.if.end.i351_crit_edge
  %max.addr.1.i347 = phi i32 [ %max.addr.068.i337, %if.else17.i346 ], [ %div.i339, %land.lhs.true.i345.if.end.i351_crit_edge ]
  %min.1.i348 = phi i32 [ %div.i339, %if.else17.i346 ], [ %min.069.i336, %land.lhs.true.i345.if.end.i351_crit_edge ]
  %sub.i349 = sub i32 %max.addr.1.i347, %min.1.i348
  %cmp9.i350 = icmp sgt i32 %sub.i349, 1
  br i1 %cmp9.i350, label %if.end.i351.while.body.i342_crit_edge, label %while.end.i362

if.end.i351.while.body.i342_crit_edge:            ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i342

while.end.i362:                                   ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18.i352 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %min.1.i348
  %read19.i353 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %min.1.i348, i32 1
  %40 = ptrtoint ptr %read19.i353 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %read19.i353, align 4
  %sub20.i354 = sub i32 %mul, %41
  %arrayidx21.i355 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %max.addr.1.i347
  %42 = ptrtoint ptr %arrayidx21.i355 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx21.i355, align 4
  %44 = ptrtoint ptr %arrayidx18.i352 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx18.i352, align 4
  %sub25.i356 = sub i32 %43, %45
  %mul.i357 = mul i32 %sub25.i356, %sub20.i354
  %read27.i358 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %max.addr.1.i347, i32 1
  %46 = ptrtoint ptr %read27.i358 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %read27.i358, align 4
  %sub30.i359 = sub i32 %47, %41
  %div31.i360 = sdiv i32 %mul.i357, %sub30.i359
  %add34.i361 = add i32 %div31.i360, %45
  br label %while.body.i377.preheader

while.body.i377.preheader:                        ; preds = %while.end.i362, %if.else101.while.body.i377.preheader_crit_edge
  %res.0.i363 = phi i32 [ %add34.i361, %while.end.i362 ], [ 4810, %if.else101.while.body.i377.preheader_crit_edge ]
  br label %while.body.i377

while.body.i377:                                  ; preds = %if.end.i386.while.body.i377_crit_edge, %while.body.i377.preheader
  %min.069.i371 = phi i32 [ %min.1.i383, %if.end.i386.while.body.i377_crit_edge ], [ 0, %while.body.i377.preheader ]
  %max.addr.068.i372 = phi i32 [ %max.addr.1.i382, %if.end.i386.while.body.i377_crit_edge ], [ 36, %while.body.i377.preheader ]
  %add.i373 = add i32 %max.addr.068.i372, %min.069.i371
  %div.i374 = sdiv i32 %add.i373, 2
  %read11.i375 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %min.069.i371, i32 1
  %48 = ptrtoint ptr %read11.i375 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %read11.i375, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %and93)
  %cmp12.not.i376 = icmp sgt i32 %49, %and93
  br i1 %cmp12.not.i376, label %while.body.i377.if.else17.i381_crit_edge, label %land.lhs.true.i380

while.body.i377.if.else17.i381_crit_edge:         ; preds = %while.body.i377
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i381

land.lhs.true.i380:                               ; preds = %while.body.i377
  %read14.i378 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %div.i374, i32 1
  %50 = ptrtoint ptr %read14.i378 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %read14.i378, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %and93)
  %cmp15.i379 = icmp sgt i32 %51, %and93
  br i1 %cmp15.i379, label %land.lhs.true.i380.if.end.i386_crit_edge, label %land.lhs.true.i380.if.else17.i381_crit_edge

land.lhs.true.i380.if.else17.i381_crit_edge:      ; preds = %land.lhs.true.i380
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i381

land.lhs.true.i380.if.end.i386_crit_edge:         ; preds = %land.lhs.true.i380
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i386

if.else17.i381:                                   ; preds = %land.lhs.true.i380.if.else17.i381_crit_edge, %while.body.i377.if.else17.i381_crit_edge
  br label %if.end.i386

if.end.i386:                                      ; preds = %if.else17.i381, %land.lhs.true.i380.if.end.i386_crit_edge
  %max.addr.1.i382 = phi i32 [ %max.addr.068.i372, %if.else17.i381 ], [ %div.i374, %land.lhs.true.i380.if.end.i386_crit_edge ]
  %min.1.i383 = phi i32 [ %div.i374, %if.else17.i381 ], [ %min.069.i371, %land.lhs.true.i380.if.end.i386_crit_edge ]
  %sub.i384 = sub i32 %max.addr.1.i382, %min.1.i383
  %cmp9.i385 = icmp sgt i32 %sub.i384, 1
  br i1 %cmp9.i385, label %if.end.i386.while.body.i377_crit_edge, label %while.end.i397

if.end.i386.while.body.i377_crit_edge:            ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i377

while.end.i397:                                   ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18.i387 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %min.1.i383
  %read19.i388 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %min.1.i383, i32 1
  %52 = ptrtoint ptr %read19.i388 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %read19.i388, align 4
  %sub20.i389 = sub i32 %and93, %53
  %arrayidx21.i390 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %max.addr.1.i382
  %54 = ptrtoint ptr %arrayidx21.i390 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx21.i390, align 4
  %56 = ptrtoint ptr %arrayidx18.i387 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx18.i387, align 4
  %sub25.i391 = sub i32 %55, %57
  %mul.i392 = mul i32 %sub25.i391, %sub20.i389
  %read27.i393 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %max.addr.1.i382, i32 1
  %58 = ptrtoint ptr %read27.i393 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %read27.i393, align 4
  %sub30.i394 = sub i32 %59, %53
  %div31.i395 = sdiv i32 %mul.i392, %sub30.i394
  %add34.i396 = add i32 %div31.i395, %57
  %sub = sub i32 %res.0.i363, %add34.i396
  %div = udiv i32 %sub, 10
  br label %if.end105

if.end105:                                        ; preds = %while.end.i397, %if.then100, %if.then87.if.end105_crit_edge
  %estn.0 = phi i32 [ -1, %if.then100 ], [ %add34.i396, %while.end.i397 ], [ -1, %if.then87.if.end105_crit_edge ]
  %quantn.0 = phi i32 [ -1, %if.then100 ], [ %res.0.i363, %while.end.i397 ], [ -1, %if.then87.if.end105_crit_edge ]
  %val.0 = phi i32 [ 270, %if.then100 ], [ %div, %while.end.i397 ], [ 301, %if.then87.if.end105_crit_edge ]
  %conv106 = trunc i32 %val.0 to i16
  %60 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv106, ptr %snr, align 2
  %verbose108 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %verbose108 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %verbose108, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %switch324 = icmp ult i32 %64, 4
  br i1 %switch324, label %if.end105.cleanup_crit_edge, label %do.end118

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end118:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.392, ptr noundef nonnull @.str.381, i32 noundef %and90, i32 noundef %quantn.0, i32 noundef %and93, i32 noundef %estn.0, i32 noundef %val.0) #10
  br label %cleanup

do.body170:                                       ; preds = %entry
  %verbose171 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %verbose171 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %verbose171, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %switch327 = icmp ult i32 %68, 4
  br i1 %switch327, label %do.body170.cleanup_crit_edge, label %do.end181

do.body170.cleanup_crit_edge:                     ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end181:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.381) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end181, %do.body170.cleanup_crit_edge, %do.end118, %if.end105.cleanup_crit_edge, %sw.bb84.cleanup_crit_edge, %do.end, %stb0899_table_lookup.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end181 ], [ 0, %sw.bb84.cleanup_crit_edge ], [ 0, %do.end118 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %stb0899_table_lookup.exit.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ], [ -22, %do.body170.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %tmp.i43 = alloca i8, align 1
  %tmp.i39 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp ugt i8 %3, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61600) #7
  %4 = trunc i32 %call.i to i8
  %conv4 = or i8 %4, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %tmp.i, align 1
  %call.i38 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61600, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %6 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp947.not = icmp eq i8 %7, 0
  br i1 %cmp947.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.end.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end15.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 100
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %for.body
  %call.i.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61608) #7
  %9 = and i32 %call.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end15, label %if.end.i

if.end.i:                                         ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.body.i:                                        ; preds = %if.end.i
  %verbose.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %verbose.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp4.not.i = icmp eq i32 %14, 0
  br i1 %cmp4.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.411, ptr noundef nonnull @.str.412) #10
  br label %cleanup

if.end15:                                         ; preds = %while.cond.i
  %arrayidx = getelementptr [6 x i8], ptr %cmd, i32 0, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i39) #7
  %17 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp.i39, align 1
  %call.i40 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61607, ptr noundef nonnull %tmp.i39, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i39) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %18 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msg_len, align 1
  %20 = zext i8 %19 to i32
  %cmp9 = icmp ult i32 %indvars.iv.next, %20
  br i1 %cmp9, label %if.end15.for.body_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i41 = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61600) #7
  %21 = trunc i32 %call.i41 to i8
  %conv22 = and i8 %21, -5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i43) #7
  %22 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv22, ptr %tmp.i43, align 1
  %call.i44 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61600, ptr noundef nonnull %tmp.i43, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i43) #7
  call void @msleep(i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -110, %do.end.i ], [ -110, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_recv_slave_reply(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %reply) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 100
  br label %while.body.i

while.body.i:                                     ; preds = %if.end57.i.while.body.i_crit_edge, %entry
  %call.i.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61604) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end57.i

do.body.i:                                        ; preds = %while.body.i
  %verbose.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %verbose.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not.i = icmp eq i32 %7, 0
  br i1 %cmp3.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422, ptr noundef nonnull @.str.423) #10
  br label %cleanup

if.end57.i:                                       ; preds = %while.body.i
  tail call void @msleep(i32 noundef 10) #7
  %8 = and i32 %call.i.i, 128
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end57.i.while.body.i_crit_edge, label %if.end

if.end57.i.while.body.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end:                                           ; preds = %if.end57.i
  %call.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61604) #7
  %9 = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call.i35 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61605) #7
  %10 = trunc i32 %call.i35 to i8
  %conv9 = and i8 %10, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv9)
  %cmp11 = icmp ugt i8 %conv9, 4
  br i1 %cmp11, label %if.then3.cleanup_crit_edge, label %if.end14

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.then3
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %reply, i32 0, i32 1
  %11 = ptrtoint ptr %msg_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %msg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv9)
  %cmp1739.not = icmp eq i8 %conv9, 0
  br i1 %cmp1739.not, label %if.end14.cleanup_crit_edge, label %for.body.preheader

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end14
  %wide.trip.count = zext i8 %conv9 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %call.i36 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61607) #7
  %conv20 = trunc i32 %call.i36 to i8
  %arrayidx = getelementptr [4 x i8], ptr %reply, i32 0, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv20, ptr %arrayidx, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -110, %do.end.i ], [ -110, %do.body.i.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_send_diseqc_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %tmp.i62 = alloca i8, align 1
  %tmp.i46 = alloca i8, align 1
  %tmp.i43 = alloca i8, align 1
  %tmp.i41 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 100
  br label %while.body.i

while.body.i:                                     ; preds = %if.end57.i.while.body.i_crit_edge, %entry
  %call.i.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61608) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end57.i

do.body.i:                                        ; preds = %while.body.i
  %verbose.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %verbose.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not.i = icmp eq i32 %7, 0
  br i1 %cmp3.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422, ptr noundef nonnull @.str.433) #10
  br label %cleanup

if.end57.i:                                       ; preds = %while.body.i
  tail call void @msleep(i32 noundef 10) #7
  %8 = and i32 %call.i.i, 32
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end57.i.while.body.i_crit_edge, label %if.end

if.end57.i.while.body.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end:                                           ; preds = %if.end57.i
  %call.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61600) #7
  %conv = trunc i32 %call.i to i8
  %conv7 = or i8 %conv, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %tmp.i, align 1
  %call.i40 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61600, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %10 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.670)
  switch i32 %burst, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i41) #7
  %11 = ptrtoint ptr %tmp.i41 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tmp.i41, align 1
  %call.i42 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61607, ptr noundef nonnull %tmp.i41, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i41) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i43) #7
  %12 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %tmp.i43, align 1
  %call.i44 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61607, ptr noundef nonnull %tmp.i43, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i43) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb, %if.end.sw.epilog_crit_edge
  %call.i45 = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61600) #7
  %13 = trunc i32 %call.i45 to i8
  %conv17 = and i8 %13, -5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i46) #7
  %14 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv17, ptr %tmp.i46, align 1
  %call.i47 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61600, ptr noundef nonnull %tmp.i46, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i46) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i48 = add i32 %15, 100
  br label %while.body.i52

while.body.i52:                                   ; preds = %if.end57.i59.while.body.i52_crit_edge, %sw.epilog
  %call.i.i49 = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61608) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i50 = sub i32 %add.i48, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i50)
  %cmp.i51 = icmp slt i32 %sub.i50, 0
  br i1 %cmp.i51, label %do.body.i55, label %if.end57.i59

do.body.i55:                                      ; preds = %while.body.i52
  %verbose.i53 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %verbose.i53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %verbose.i53, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3.not.i54 = icmp eq i32 %20, 0
  br i1 %cmp3.not.i54, label %do.body.i55.cleanup_crit_edge, label %do.end.i57

do.body.i55.cleanup_crit_edge:                    ; preds = %do.body.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i57:                                       ; preds = %do.body.i55
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422, ptr noundef nonnull @.str.433) #10
  br label %cleanup

if.end57.i59:                                     ; preds = %while.body.i52
  call void @msleep(i32 noundef 10) #7
  %21 = and i32 %call.i.i49, 32
  %tobool.not.i58 = icmp eq i32 %21, 0
  br i1 %tobool.not.i58, label %if.end57.i59.while.body.i52_crit_edge, label %if.end23

if.end57.i59.while.body.i52_crit_edge:            ; preds = %if.end57.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i52

if.end23:                                         ; preds = %if.end57.i59
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i62) #7
  %22 = ptrtoint ptr %tmp.i62 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %tmp.i62, align 1
  %call.i63 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61600, ptr noundef nonnull %tmp.i62, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i62) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end.i57, %do.body.i55.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -110, %do.end.i ], [ -110, %do.body.i.cleanup_crit_edge ], [ -110, %do.end.i57 ], [ -110, %do.body.i55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %tmp.i32 = alloca i8, align 1
  %tmp.i30 = alloca i8, align 1
  %tmp.i28 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %internal1 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 100
  br label %while.body.i

while.body.i:                                     ; preds = %if.end57.i.while.body.i_crit_edge, %entry
  %call.i.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61608) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end57.i

do.body.i:                                        ; preds = %while.body.i
  %verbose.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %verbose.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not.i = icmp eq i32 %7, 0
  br i1 %cmp3.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422, ptr noundef nonnull @.str.433) #10
  br label %cleanup

if.end57.i:                                       ; preds = %while.body.i
  tail call void @msleep(i32 noundef 10) #7
  %8 = and i32 %call.i.i, 32
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end57.i.while.body.i_crit_edge, label %if.end

if.end57.i.while.body.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end:                                           ; preds = %if.end57.i
  %9 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.671)
  switch i32 %tone, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %internal1, align 4
  %div3 = udiv i32 %11, 563200
  %12 = trunc i32 %div3 to i16
  %13 = and i16 %12, 255
  %div5.lhs.trunc = add nuw nsw i16 %13, 5
  %div536 = udiv i16 %div5.lhs.trunc, 10
  %conv6 = trunc i16 %div536 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 102, ptr %tmp.i, align 1
  %call.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61791, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %call.i27 = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61712) #7
  %15 = trunc i32 %call.i27 to i8
  %16 = and i8 %15, -113
  %conv11 = or i8 %16, 48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i28) #7
  %17 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11, ptr %tmp.i28, align 1
  %call.i29 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61712, ptr noundef nonnull %tmp.i28, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i28) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i30) #7
  %18 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv6, ptr %tmp.i30, align 1
  %call.i31 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61713, ptr noundef nonnull %tmp.i30, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i30) #7
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i32) #7
  %19 = ptrtoint ptr %tmp.i32 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %tmp.i32, align 1
  %call.i33 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61791, ptr noundef nonnull %tmp.i32, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i32) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb, %if.end.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb14 ], [ 0, %sw.bb ], [ -110, %do.end.i ], [ -110, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %tmp.i33 = alloca i8, align 1
  %tmp.i31 = alloca i8, align 1
  %tmp.i29 = alloca i8, align 1
  %tmp.i27 = alloca i8, align 1
  %tmp.i25 = alloca i8, align 1
  %tmp.i23 = alloca i8, align 1
  %tmp.i21 = alloca i8, align 1
  %tmp.i19 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.672)
  switch i32 %voltage, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -126, ptr %tmp.i, align 1
  %call.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61760, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i19) #7
  %4 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %tmp.i19, align 1
  %call.i20 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61761, ptr noundef nonnull %tmp.i19, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i19) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i21) #7
  %5 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tmp.i21, align 1
  %call.i22 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61762, ptr noundef nonnull %tmp.i21, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i21) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i23) #7
  %6 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %tmp.i23, align 1
  %call.i24 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61760, ptr noundef nonnull %tmp.i23, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i23) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i25) #7
  %7 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %tmp.i25, align 1
  %call.i26 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61761, ptr noundef nonnull %tmp.i25, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i25) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i27) #7
  %8 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -126, ptr %tmp.i27, align 1
  %call.i28 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61762, ptr noundef nonnull %tmp.i27, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i27) #7
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i29) #7
  %9 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -126, ptr %tmp.i29, align 1
  %call.i30 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61760, ptr noundef nonnull %tmp.i29, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i29) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i31) #7
  %10 = ptrtoint ptr %tmp.i31 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -126, ptr %tmp.i31, align 1
  %call.i32 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61761, ptr noundef nonnull %tmp.i31, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i31) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i33) #7
  %11 = ptrtoint ptr %tmp.i33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -126, ptr %tmp.i33, align 1
  %call.i34 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61762, ptr noundef nonnull %tmp.i33, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i33) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb0899_search(ptr noundef %fe) #0 align 64 {
entry:
  %tmp.i886 = alloca i8, align 1
  %tmp.i233.i865 = alloca i8, align 1
  %tmp.i.i844 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %tmp.i233.i = alloca i8, align 1
  %tmp.i.i824 = alloca i8, align 1
  %tmp.i428.i = alloca i8, align 1
  %tmp.i425.i = alloca i8, align 1
  %tmp.i423.i = alloca i8, align 1
  %tmp.i421.i = alloca i8, align 1
  %tmp.i419.i = alloca i8, align 1
  %tmp.i416.i = alloca i8, align 1
  %tmp.i413.i = alloca i8, align 1
  %tmp.i411.i = alloca i8, align 1
  %tmp.i409.i = alloca i8, align 1
  %tmp.i407.i = alloca i8, align 1
  %tmp.i405.i = alloca i8, align 1
  %tmp.i402.i = alloca i8, align 1
  %tmp.i399.i = alloca i8, align 1
  %tmp.i397.i = alloca i8, align 1
  %tmp.i395.i = alloca i8, align 1
  %tmp.i393.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %stop_clk.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %params = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 6
  %config2 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config2, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %params, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %7 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %symbol_rate, align 4
  %srate = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %srate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %srate, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %10 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delivery_system, align 4
  %delsys = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %delsys to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %delsys, align 4
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %verbose, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %switch = icmp ult i32 %16, 4
  br i1 %switch, label %entry.do.end49_crit_edge, label %do.end

entry.do.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.440, ptr noundef nonnull @.str.441, i32 noundef %11) #10
  br label %do.end49

do.end49:                                         ; preds = %do.end, %entry.do.end49_crit_edge
  %17 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %verbose, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %switch803 = icmp ult i32 %20, 4
  br i1 %switch803, label %do.end49.do.end111_crit_edge, label %do.end59

do.end49.do.end111_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111

do.end59:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %params, align 4
  %23 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %srate, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.452, ptr noundef nonnull @.str.441, i32 noundef %22, i32 noundef %24) #10
  br label %do.end111

do.end111:                                        ; preds = %do.end59, %do.end49.do.end111_crit_edge
  %25 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %srate, align 4
  %27 = add i32 %26, -1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 44000001, i32 %27)
  %28 = icmp ult i32 %27, 44000001
  br i1 %28, label %do.body123, label %do.end111.cleanup_crit_edge

do.end111.cleanup_crit_edge:                      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body123:                                       ; preds = %do.end111
  %29 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %verbose, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %switch806 = icmp ult i32 %32, 4
  br i1 %switch806, label %do.body123.do.end176_crit_edge, label %do.end132

do.body123.do.end176_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end176

do.end132:                                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.464, ptr noundef nonnull @.str.441) #10
  br label %do.end176

do.end176:                                        ; preds = %do.end132, %do.body123.do.end176_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stop_clk.i) #7
  %33 = getelementptr inbounds [2 x i8], ptr %stop_clk.i, i32 0, i32 1
  %call.i.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61890) #7
  %conv.i = trunc i32 %call.i.i to i8
  %34 = ptrtoint ptr %stop_clk.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %stop_clk.i, align 1
  %call.i390.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 61891) #7
  %conv2.i = trunc i32 %call.i390.i to i8
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv2.i, ptr %33, align 1
  %36 = ptrtoint ptr %delsys to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delsys, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.673)
  switch i32 %37, label %do.body259.i [
    i32 5, label %do.body.i
    i32 6, label %sw.bb124.i
    i32 4, label %sw.bb195.i
  ]

do.body.i:                                        ; preds = %do.end176
  %39 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %verbose, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %switch.i = icmp ult i32 %42, 4
  br i1 %switch.i, label %do.body.i.do.end55.i_crit_edge, label %do.end.i

do.body.i.do.end55.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.543, ptr noundef nonnull @.str.544) #10
  br label %do.end55.i

do.end55.i:                                       ; preds = %do.end.i, %do.body.i.do.end55.i_crit_edge
  %call.i391.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62771) #7
  %43 = trunc i32 %call.i391.i to i8
  %44 = and i8 %43, -13
  %conv63.i = or i8 %44, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %45 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv63.i, ptr %tmp.i.i, align 1
  %call.i392.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62771, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i393.i) #7
  %46 = ptrtoint ptr %tmp.i393.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -79, ptr %tmp.i393.i, align 1
  %call.i394.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62792, ptr noundef nonnull %tmp.i393.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i393.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i395.i) #7
  %47 = ptrtoint ptr %tmp.i395.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 64, ptr %tmp.i395.i, align 1
  %call.i396.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62793, ptr noundef nonnull %tmp.i395.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i395.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i397.i) #7
  %48 = ptrtoint ptr %tmp.i397.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 66, ptr %tmp.i397.i, align 1
  %call.i398.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62794, ptr noundef nonnull %tmp.i397.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i397.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i399.i) #7
  %49 = ptrtoint ptr %tmp.i399.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 18, ptr %tmp.i399.i, align 1
  %call.i400.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62795, ptr noundef nonnull %tmp.i399.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i399.i) #7
  %call.i401.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 65297) #7
  %50 = trunc i32 %call.i401.i to i8
  %conv74.i = or i8 %50, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i402.i) #7
  %51 = ptrtoint ptr %tmp.i402.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv74.i, ptr %tmp.i402.i, align 1
  %call.i403.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 65297, ptr noundef nonnull %tmp.i402.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i402.i) #7
  %52 = ptrtoint ptr %stop_clk.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %stop_clk.i, align 1
  %54 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %33, align 1
  %56 = and i8 %53, -125
  %57 = or i8 %56, 120
  store i8 %57, ptr %stop_clk.i, align 1
  %58 = or i8 %55, 7
  store i8 %58, ptr %33, align 1
  br label %stb0899_set_delivery.exit

sw.bb124.i:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #9
  %call.i404.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62771) #7
  %59 = trunc i32 %call.i404.i to i8
  %conv134.i = and i8 %59, -13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i405.i) #7
  %60 = ptrtoint ptr %tmp.i405.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv134.i, ptr %tmp.i405.i, align 1
  %call.i406.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62771, ptr noundef nonnull %tmp.i405.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i405.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i407.i) #7
  %61 = ptrtoint ptr %tmp.i407.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -79, ptr %tmp.i407.i, align 1
  %call.i408.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62792, ptr noundef nonnull %tmp.i407.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i407.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i409.i) #7
  %62 = ptrtoint ptr %tmp.i409.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 66, ptr %tmp.i409.i, align 1
  %call.i410.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62793, ptr noundef nonnull %tmp.i409.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i409.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i411.i) #7
  %63 = ptrtoint ptr %tmp.i411.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 64, ptr %tmp.i411.i, align 1
  %call.i412.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62794, ptr noundef nonnull %tmp.i411.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i411.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i413.i) #7
  %64 = ptrtoint ptr %tmp.i413.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %tmp.i413.i, align 1
  %call.i414.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62795, ptr noundef nonnull %tmp.i413.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i413.i) #7
  %call.i415.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 65297) #7
  %65 = trunc i32 %call.i415.i to i8
  %conv145.i = and i8 %65, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i416.i) #7
  %66 = ptrtoint ptr %tmp.i416.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv145.i, ptr %tmp.i416.i, align 1
  %call.i417.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 65297, ptr noundef nonnull %tmp.i416.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i416.i) #7
  %67 = ptrtoint ptr %stop_clk.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %stop_clk.i, align 1
  %69 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %33, align 1
  %71 = and i8 %68, -125
  %72 = or i8 %71, 32
  store i8 %72, ptr %stop_clk.i, align 1
  %73 = and i8 %70, -8
  store i8 %73, ptr %33, align 1
  br label %stb0899_set_delivery.exit

sw.bb195.i:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #9
  %call.i418.i = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 62771) #7
  %74 = trunc i32 %call.i418.i to i8
  %conv205.i = or i8 %74, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i419.i) #7
  %75 = ptrtoint ptr %tmp.i419.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv205.i, ptr %tmp.i419.i, align 1
  %call.i420.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62771, ptr noundef nonnull %tmp.i419.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i419.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i421.i) #7
  %76 = ptrtoint ptr %tmp.i421.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -95, ptr %tmp.i421.i, align 1
  %call.i422.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62792, ptr noundef nonnull %tmp.i421.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i421.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i423.i) #7
  %77 = ptrtoint ptr %tmp.i423.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 97, ptr %tmp.i423.i, align 1
  %call.i424.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62793, ptr noundef nonnull %tmp.i423.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i423.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i425.i) #7
  %78 = ptrtoint ptr %tmp.i425.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 66, ptr %tmp.i425.i, align 1
  %call.i426.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 62794, ptr noundef nonnull %tmp.i425.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i425.i) #7
  %call.i427.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %1, i32 noundef 65297) #7
  %79 = trunc i32 %call.i427.i to i8
  %conv215.i = or i8 %79, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i428.i) #7
  %80 = ptrtoint ptr %tmp.i428.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv215.i, ptr %tmp.i428.i, align 1
  %call.i429.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 65297, ptr noundef nonnull %tmp.i428.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i428.i) #7
  %81 = ptrtoint ptr %stop_clk.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %stop_clk.i, align 1
  %83 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %33, align 1
  %85 = and i8 %82, -61
  %86 = or i8 %85, 56
  store i8 %86, ptr %stop_clk.i, align 1
  %87 = or i8 %84, 7
  store i8 %87, ptr %33, align 1
  br label %stb0899_set_delivery.exit

do.body259.i:                                     ; preds = %do.end176
  %88 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %verbose, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp261.not.i = icmp eq i32 %91, 0
  br i1 %cmp261.not.i, label %do.body259.i.stb0899_set_delivery.exit_crit_edge, label %do.end270.i

do.body259.i.stb0899_set_delivery.exit_crit_edge: ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_set_delivery.exit

do.end270.i:                                      ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #9
  %call272.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.544) #10
  br label %stb0899_set_delivery.exit

stb0899_set_delivery.exit:                        ; preds = %do.end270.i, %do.body259.i.stb0899_set_delivery.exit_crit_edge, %sw.bb195.i, %sw.bb124.i, %do.end55.i
  %92 = ptrtoint ptr %stop_clk.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %stop_clk.i, align 1
  %94 = and i8 %93, -3
  store i8 %94, ptr %stop_clk.i, align 1
  %call327.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61890, ptr noundef nonnull %stop_clk.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stop_clk.i) #7
  %95 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config2, align 4
  %tuner_set_rfsiggain = getelementptr inbounds %struct.stb0899_config, ptr %96, i32 0, i32 38
  %97 = ptrtoint ptr %tuner_set_rfsiggain to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tuner_set_rfsiggain, align 4
  %tobool.not = icmp eq ptr %98, null
  br i1 %tobool.not, label %stb0899_set_delivery.exit.if.end192_crit_edge, label %if.then178

stb0899_set_delivery.exit.if.end192_crit_edge:    ; preds = %stb0899_set_delivery.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then178:                                       ; preds = %stb0899_set_delivery.exit
  call void @__sanitizer_cov_trace_pc() #9
  %srate179 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 2
  %99 = ptrtoint ptr %srate179 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %srate179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000000, i32 %100)
  %cmp180 = icmp ugt i32 %100, 15000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %100)
  %cmp184 = icmp ugt i32 %100, 5000000
  %. = select i1 %cmp184, i32 12, i32 14
  %gain.0 = select i1 %cmp180, i32 8, i32 %.
  %call191 = call i32 %98(ptr noundef %fe, i32 noundef %gain.0) #7
  br label %if.end192

if.end192:                                        ; preds = %if.then178, %stb0899_set_delivery.exit.if.end192_crit_edge
  %101 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %srate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %102)
  %cmp194 = icmp ult i32 %102, 5000001
  %hi_clk = getelementptr inbounds %struct.stb0899_config, ptr %3, i32 0, i32 20
  %lo_clk = getelementptr inbounds %struct.stb0899_config, ptr %3, i32 0, i32 19
  %hi_clk.sink = select i1 %cmp194, ptr %lo_clk, ptr %hi_clk
  %103 = ptrtoint ptr %hi_clk.sink to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hi_clk.sink, align 4
  call fastcc void @stb0899_set_mclk(ptr noundef %1, i32 noundef %104)
  %105 = ptrtoint ptr %delsys to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delsys, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.674)
  switch i32 %106, label %do.body537 [
    i32 5, label %if.end192.do.body199_crit_edge
    i32 4, label %if.end192.do.body199_crit_edge890
    i32 6, label %sw.bb393
  ]

if.end192.do.body199_crit_edge890:                ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body199

if.end192.do.body199_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body199

do.body199:                                       ; preds = %if.end192.do.body199_crit_edge, %if.end192.do.body199_crit_edge890
  %108 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %verbose, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %111)
  %switch809 = icmp ult i32 %111, 4
  br i1 %switch809, label %do.body199.do.end252_crit_edge, label %do.end208

do.body199.do.end252_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end252

do.end208:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.476, ptr noundef nonnull @.str.441) #10
  br label %do.end252

do.end252:                                        ; preds = %do.end208, %do.body199.do.end252_crit_edge
  %112 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %params, align 4
  %freq254 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 1
  %114 = ptrtoint ptr %freq254 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %freq254, align 4
  %115 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %srate, align 4
  %srate256 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 2
  %117 = ptrtoint ptr %srate256 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %srate256, align 4
  %div = udiv i32 %116, 5
  %add258 = add nuw nsw i32 %div, 11500000
  %srch_range = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 4
  %118 = ptrtoint ptr %srch_range to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add258, ptr %srch_range, align 4
  %derot_percent = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 12
  %119 = ptrtoint ptr %derot_percent to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 30, ptr %derot_percent, align 2
  %demodulator_priv.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 2, i32 3
  %120 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %demodulator_priv.i, align 4
  %call.i.i825 = call fastcc i32 @_stb0899_read_reg(ptr noundef %121, i32 noundef 61738) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i825)
  %cmp.i = icmp slt i32 %call.i.i825, 0
  br i1 %cmp.i, label %do.end252.do.body124.i_crit_edge, label %if.end.i

do.end252.do.body124.i_crit_edge:                 ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124.i

if.end.i:                                         ; preds = %do.end252
  %verbose56.i = getelementptr inbounds %struct.stb0899_state, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %verbose56.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %verbose56.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %125)
  %switch229.i = icmp ult i32 %125, 4
  br i1 %switch229.i, label %if.end.i.do.end48.i_crit_edge, label %do.end.i827

if.end.i.do.end48.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i

do.end.i827:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #10
  br label %do.end48.i

do.end48.i:                                       ; preds = %do.end.i827, %if.end.i.do.end48.i_crit_edge
  %126 = trunc i32 %call.i.i825 to i8
  %conv.i828 = or i8 %126, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i824) #7
  %127 = ptrtoint ptr %tmp.i.i824 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv.i828, ptr %tmp.i.i824, align 1
  %call.i232.i = call i32 @stb0899_write_regs(ptr noundef %121, i32 noundef 61738, ptr noundef nonnull %tmp.i.i824, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i824) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232.i)
  %cmp50.i = icmp slt i32 %call.i232.i, 0
  br i1 %cmp50.i, label %do.end48.i.do.body124.i_crit_edge, label %do.end48.i.stb0899_i2c_gate_ctrl.exit_crit_edge

do.end48.i.stb0899_i2c_gate_ctrl.exit_crit_edge:  ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_i2c_gate_ctrl.exit

do.end48.i.do.body124.i_crit_edge:                ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124.i

do.body124.i:                                     ; preds = %do.end48.i.do.body124.i_crit_edge, %do.end252.do.body124.i_crit_edge
  %verbose125.i = getelementptr inbounds %struct.stb0899_state, ptr %121, i32 0, i32 3
  %128 = ptrtoint ptr %verbose125.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %verbose125.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp126.not.i = icmp eq i32 %131, 0
  br i1 %cmp126.not.i, label %do.body124.i.stb0899_i2c_gate_ctrl.exit_crit_edge, label %do.end135.i

do.body124.i.stb0899_i2c_gate_ctrl.exit_crit_edge: ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_i2c_gate_ctrl.exit

do.end135.i:                                      ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #9
  %call137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #10
  br label %stb0899_i2c_gate_ctrl.exit

stb0899_i2c_gate_ctrl.exit:                       ; preds = %do.end135.i, %do.body124.i.stb0899_i2c_gate_ctrl.exit_crit_edge, %do.end48.i.stb0899_i2c_gate_ctrl.exit_crit_edge
  %132 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %config2, align 4
  %tuner_set_bandwidth = getelementptr inbounds %struct.stb0899_config, ptr %133, i32 0, i32 36
  %134 = ptrtoint ptr %tuner_set_bandwidth to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tuner_set_bandwidth, align 4
  %tobool261.not = icmp eq ptr %135, null
  br i1 %tobool261.not, label %stb0899_i2c_gate_ctrl.exit.if.end269_crit_edge, label %if.then262

stb0899_i2c_gate_ctrl.exit.if.end269_crit_edge:   ; preds = %stb0899_i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end269

if.then262:                                       ; preds = %stb0899_i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call265 = call i32 @stb0899_carr_width(ptr noundef %1) #7
  %136 = mul i32 %call265, 13
  %mul = add i32 %136, 130000000
  %div267 = udiv i32 %mul, 10
  %call268 = call i32 %135(ptr noundef %fe, i32 noundef %div267) #7
  br label %if.end269

if.end269:                                        ; preds = %if.then262, %stb0899_i2c_gate_ctrl.exit.if.end269_crit_edge
  %137 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %config2, align 4
  %tuner_get_bandwidth = getelementptr inbounds %struct.stb0899_config, ptr %138, i32 0, i32 37
  %139 = ptrtoint ptr %tuner_get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tuner_get_bandwidth, align 4
  %tobool271.not = icmp eq ptr %140, null
  br i1 %tobool271.not, label %if.end269.if.end276_crit_edge, label %if.then272

if.end269.if.end276_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end276

if.then272:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #9
  %tuner_bw = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 8
  %call275 = call i32 %140(ptr noundef %fe, ptr noundef %tuner_bw) #7
  br label %if.end276

if.end276:                                        ; preds = %if.then272, %if.end269.if.end276_crit_edge
  %141 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %demodulator_priv.i, align 4
  %call.i.i831 = call fastcc i32 @_stb0899_read_reg(ptr noundef %142, i32 noundef 61738) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i831)
  %cmp.i832 = icmp slt i32 %call.i.i831, 0
  br i1 %cmp.i832, label %if.end276.do.body124.i838_crit_edge, label %if.end.i835

if.end276.do.body124.i838_crit_edge:              ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124.i838

if.end.i835:                                      ; preds = %if.end276
  %verbose56.i833 = getelementptr inbounds %struct.stb0899_state, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %verbose56.i833 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %verbose56.i833, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %146)
  %switch229.i834 = icmp ult i32 %146, 4
  br i1 %switch229.i834, label %if.end.i835.do.end116.i_crit_edge, label %do.end66.i

if.end.i835.do.end116.i_crit_edge:                ; preds = %if.end.i835
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116.i

do.end66.i:                                       ; preds = %if.end.i835
  call void @__sanitizer_cov_trace_pc() #9
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.58) #10
  br label %do.end116.i

do.end116.i:                                      ; preds = %do.end66.i, %if.end.i835.do.end116.i_crit_edge
  %147 = trunc i32 %call.i.i831 to i8
  %conv117.i = and i8 %147, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i233.i) #7
  %148 = ptrtoint ptr %tmp.i233.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv117.i, ptr %tmp.i233.i, align 1
  %call.i234.i = call i32 @stb0899_write_regs(ptr noundef %142, i32 noundef 61738, ptr noundef nonnull %tmp.i233.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i233.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.i)
  %cmp119.i = icmp slt i32 %call.i234.i, 0
  br i1 %cmp119.i, label %do.end116.i.do.body124.i838_crit_edge, label %do.end116.i.stb0899_i2c_gate_ctrl.exit842_crit_edge

do.end116.i.stb0899_i2c_gate_ctrl.exit842_crit_edge: ; preds = %do.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_i2c_gate_ctrl.exit842

do.end116.i.do.body124.i838_crit_edge:            ; preds = %do.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124.i838

do.body124.i838:                                  ; preds = %do.end116.i.do.body124.i838_crit_edge, %if.end276.do.body124.i838_crit_edge
  %verbose125.i836 = getelementptr inbounds %struct.stb0899_state, ptr %142, i32 0, i32 3
  %149 = ptrtoint ptr %verbose125.i836 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %verbose125.i836, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp126.not.i837 = icmp eq i32 %152, 0
  br i1 %cmp126.not.i837, label %do.body124.i838.stb0899_i2c_gate_ctrl.exit842_crit_edge, label %do.end135.i840

do.body124.i838.stb0899_i2c_gate_ctrl.exit842_crit_edge: ; preds = %do.body124.i838
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_i2c_gate_ctrl.exit842

do.end135.i840:                                   ; preds = %do.body124.i838
  call void @__sanitizer_cov_trace_pc() #9
  %call137.i839 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #10
  br label %stb0899_i2c_gate_ctrl.exit842

stb0899_i2c_gate_ctrl.exit842:                    ; preds = %do.end135.i840, %do.body124.i838.stb0899_i2c_gate_ctrl.exit842_crit_edge, %do.end116.i.stb0899_i2c_gate_ctrl.exit842_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %153 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 17, ptr %tmp.i, align 1
  %call.i = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61783, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %154 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %verbose, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %157)
  %switch812 = icmp ult i32 %157, 4
  br i1 %switch812, label %stb0899_i2c_gate_ctrl.exit842.do.end333_crit_edge, label %do.end289

stb0899_i2c_gate_ctrl.exit842.do.end333_crit_edge: ; preds = %stb0899_i2c_gate_ctrl.exit842
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end333

do.end289:                                        ; preds = %stb0899_i2c_gate_ctrl.exit842
  call void @__sanitizer_cov_trace_pc() #9
  %call291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.488, ptr noundef nonnull @.str.441) #10
  br label %do.end333

do.end333:                                        ; preds = %do.end289, %stb0899_i2c_gate_ctrl.exit842.do.end333_crit_edge
  %call334 = call i32 @stb0899_dvbs_algo(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call334)
  %cmp335 = icmp eq i32 %call334, 13
  %lock = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  br i1 %cmp335, label %if.then336, label %if.else391

if.then336:                                       ; preds = %do.end333
  %158 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %lock, align 4
  %159 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %verbose, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %162)
  %switch815 = icmp ult i32 %162, 4
  br i1 %switch815, label %if.then336.cleanup_crit_edge, label %do.end346

if.then336.cleanup_crit_edge:                     ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end346:                                        ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #9
  %call348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.441) #10
  br label %cleanup

if.else391:                                       ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %lock, align 4
  br label %cleanup

sw.bb393:                                         ; preds = %if.end192
  %164 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %params, align 4
  %freq395 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 1
  %166 = ptrtoint ptr %freq395 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %freq395, align 4
  %167 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %srate, align 4
  %srate397 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 2
  %169 = ptrtoint ptr %srate397 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %srate397, align 4
  %srch_range398 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 4
  %170 = ptrtoint ptr %srch_range398 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 10000000, ptr %srch_range398, align 4
  %demodulator_priv.i845 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 2, i32 3
  %171 = ptrtoint ptr %demodulator_priv.i845 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %demodulator_priv.i845, align 4
  %call.i.i846 = call fastcc i32 @_stb0899_read_reg(ptr noundef %172, i32 noundef 61738) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i846)
  %cmp.i847 = icmp slt i32 %call.i.i846, 0
  br i1 %cmp.i847, label %sw.bb393.do.body124.i860_crit_edge, label %if.end.i850

sw.bb393.do.body124.i860_crit_edge:               ; preds = %sw.bb393
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124.i860

if.end.i850:                                      ; preds = %sw.bb393
  %verbose56.i848 = getelementptr inbounds %struct.stb0899_state, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %verbose56.i848 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %verbose56.i848, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %176)
  %switch229.i849 = icmp ult i32 %176, 4
  br i1 %switch229.i849, label %if.end.i850.do.end48.i857_crit_edge, label %do.end.i853

if.end.i850.do.end48.i857_crit_edge:              ; preds = %if.end.i850
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i857

do.end.i853:                                      ; preds = %if.end.i850
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i852 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #10
  br label %do.end48.i857

do.end48.i857:                                    ; preds = %do.end.i853, %if.end.i850.do.end48.i857_crit_edge
  %177 = trunc i32 %call.i.i846 to i8
  %conv.i854 = or i8 %177, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i844) #7
  %178 = ptrtoint ptr %tmp.i.i844 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv.i854, ptr %tmp.i.i844, align 1
  %call.i232.i855 = call i32 @stb0899_write_regs(ptr noundef %172, i32 noundef 61738, ptr noundef nonnull %tmp.i.i844, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i844) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232.i855)
  %cmp50.i856 = icmp slt i32 %call.i232.i855, 0
  br i1 %cmp50.i856, label %do.end48.i857.do.body124.i860_crit_edge, label %do.end48.i857.stb0899_i2c_gate_ctrl.exit864_crit_edge

do.end48.i857.stb0899_i2c_gate_ctrl.exit864_crit_edge: ; preds = %do.end48.i857
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_i2c_gate_ctrl.exit864

do.end48.i857.do.body124.i860_crit_edge:          ; preds = %do.end48.i857
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124.i860

do.body124.i860:                                  ; preds = %do.end48.i857.do.body124.i860_crit_edge, %sw.bb393.do.body124.i860_crit_edge
  %verbose125.i858 = getelementptr inbounds %struct.stb0899_state, ptr %172, i32 0, i32 3
  %179 = ptrtoint ptr %verbose125.i858 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %verbose125.i858, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp126.not.i859 = icmp eq i32 %182, 0
  br i1 %cmp126.not.i859, label %do.body124.i860.stb0899_i2c_gate_ctrl.exit864_crit_edge, label %do.end135.i862

do.body124.i860.stb0899_i2c_gate_ctrl.exit864_crit_edge: ; preds = %do.body124.i860
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_i2c_gate_ctrl.exit864

do.end135.i862:                                   ; preds = %do.body124.i860
  call void @__sanitizer_cov_trace_pc() #9
  %call137.i861 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #10
  br label %stb0899_i2c_gate_ctrl.exit864

stb0899_i2c_gate_ctrl.exit864:                    ; preds = %do.end135.i862, %do.body124.i860.stb0899_i2c_gate_ctrl.exit864_crit_edge, %do.end48.i857.stb0899_i2c_gate_ctrl.exit864_crit_edge
  %183 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %config2, align 4
  %tuner_set_bandwidth402 = getelementptr inbounds %struct.stb0899_config, ptr %184, i32 0, i32 36
  %185 = ptrtoint ptr %tuner_set_bandwidth402 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tuner_set_bandwidth402, align 4
  %tobool403.not = icmp eq ptr %186, null
  br i1 %tobool403.not, label %stb0899_i2c_gate_ctrl.exit864.if.end410_crit_edge, label %if.then404

stb0899_i2c_gate_ctrl.exit864.if.end410_crit_edge: ; preds = %stb0899_i2c_gate_ctrl.exit864
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end410

if.then404:                                       ; preds = %stb0899_i2c_gate_ctrl.exit864
  call void @__sanitizer_cov_trace_pc() #9
  %call407 = call i32 @stb0899_carr_width(ptr noundef %1) #7
  %add408 = add i32 %call407, 10000000
  %call409 = call i32 %186(ptr noundef %fe, i32 noundef %add408) #7
  br label %if.end410

if.end410:                                        ; preds = %if.then404, %stb0899_i2c_gate_ctrl.exit864.if.end410_crit_edge
  %187 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %config2, align 4
  %tuner_get_bandwidth412 = getelementptr inbounds %struct.stb0899_config, ptr %188, i32 0, i32 37
  %189 = ptrtoint ptr %tuner_get_bandwidth412 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tuner_get_bandwidth412, align 4
  %tobool413.not = icmp eq ptr %190, null
  br i1 %tobool413.not, label %if.end410.if.end419_crit_edge, label %if.then414

if.end410.if.end419_crit_edge:                    ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end419

if.then414:                                       ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #9
  %tuner_bw417 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 8
  %call418 = call i32 %190(ptr noundef %fe, ptr noundef %tuner_bw417) #7
  br label %if.end419

if.end419:                                        ; preds = %if.then414, %if.end410.if.end419_crit_edge
  %191 = ptrtoint ptr %demodulator_priv.i845 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %demodulator_priv.i845, align 4
  %call.i.i868 = call fastcc i32 @_stb0899_read_reg(ptr noundef %192, i32 noundef 61738) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i868)
  %cmp.i869 = icmp slt i32 %call.i.i868, 0
  br i1 %cmp.i869, label %if.end419.do.body124.i881_crit_edge, label %if.end.i872

if.end419.do.body124.i881_crit_edge:              ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124.i881

if.end.i872:                                      ; preds = %if.end419
  %verbose56.i870 = getelementptr inbounds %struct.stb0899_state, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %verbose56.i870 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %verbose56.i870, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %196)
  %switch229.i871 = icmp ult i32 %196, 4
  br i1 %switch229.i871, label %if.end.i872.do.end116.i878_crit_edge, label %do.end66.i874

if.end.i872.do.end116.i878_crit_edge:             ; preds = %if.end.i872
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116.i878

do.end66.i874:                                    ; preds = %if.end.i872
  call void @__sanitizer_cov_trace_pc() #9
  %call68.i873 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.58) #10
  br label %do.end116.i878

do.end116.i878:                                   ; preds = %do.end66.i874, %if.end.i872.do.end116.i878_crit_edge
  %197 = trunc i32 %call.i.i868 to i8
  %conv117.i875 = and i8 %197, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i233.i865) #7
  %198 = ptrtoint ptr %tmp.i233.i865 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv117.i875, ptr %tmp.i233.i865, align 1
  %call.i234.i876 = call i32 @stb0899_write_regs(ptr noundef %192, i32 noundef 61738, ptr noundef nonnull %tmp.i233.i865, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i233.i865) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.i876)
  %cmp119.i877 = icmp slt i32 %call.i234.i876, 0
  br i1 %cmp119.i877, label %do.end116.i878.do.body124.i881_crit_edge, label %do.end116.i878.stb0899_i2c_gate_ctrl.exit885_crit_edge

do.end116.i878.stb0899_i2c_gate_ctrl.exit885_crit_edge: ; preds = %do.end116.i878
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_i2c_gate_ctrl.exit885

do.end116.i878.do.body124.i881_crit_edge:         ; preds = %do.end116.i878
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124.i881

do.body124.i881:                                  ; preds = %do.end116.i878.do.body124.i881_crit_edge, %if.end419.do.body124.i881_crit_edge
  %verbose125.i879 = getelementptr inbounds %struct.stb0899_state, ptr %192, i32 0, i32 3
  %199 = ptrtoint ptr %verbose125.i879 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %verbose125.i879, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp126.not.i880 = icmp eq i32 %202, 0
  br i1 %cmp126.not.i880, label %do.body124.i881.stb0899_i2c_gate_ctrl.exit885_crit_edge, label %do.end135.i883

do.body124.i881.stb0899_i2c_gate_ctrl.exit885_crit_edge: ; preds = %do.body124.i881
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_i2c_gate_ctrl.exit885

do.end135.i883:                                   ; preds = %do.body124.i881
  call void @__sanitizer_cov_trace_pc() #9
  %call137.i882 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #10
  br label %stb0899_i2c_gate_ctrl.exit885

stb0899_i2c_gate_ctrl.exit885:                    ; preds = %do.end135.i883, %do.body124.i881.stb0899_i2c_gate_ctrl.exit885_crit_edge, %do.end116.i878.stb0899_i2c_gate_ctrl.exit885_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i886) #7
  %203 = ptrtoint ptr %tmp.i886 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 28, ptr %tmp.i886, align 1
  %call.i887 = call i32 @stb0899_write_regs(ptr noundef %1, i32 noundef 61783, ptr noundef nonnull %tmp.i886, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i886) #7
  %internal1.i = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4
  %204 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %config2, align 4
  %206 = ptrtoint ptr %internal1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %internal1.i, align 4
  %div.i = udiv i32 %207, 1000
  %mul.i = mul nuw nsw i32 %div.i, 17
  %add.i = add nuw nsw i32 %mul.i, 410000
  %208 = ptrtoint ptr %srate397 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %srate397, align 4
  %div3.i = udiv i32 %209, 1000000
  %div4.i = udiv i32 %add.i, %div3.i
  %div5.i = udiv i32 %div4.i, 1000
  %ldpc_max_iter.i = getelementptr inbounds %struct.stb0899_config, ptr %205, i32 0, i32 33
  %210 = ptrtoint ptr %ldpc_max_iter.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %ldpc_max_iter.i, align 4
  %212 = call i32 @llvm.umin.i32(i32 %div5.i, i32 %211) #7
  %call.i888 = call i32 @_stb0899_read_s2reg(ptr noundef %1, i32 noundef 64252, i32 noundef 0, i16 noundef zeroext -1524) #7
  %and.i = and i32 %call.i888, -256
  %or.i = or i32 %and.i, %212
  %call7.i889 = call i32 @stb0899_write_s2reg(ptr noundef %1, i32 noundef 64252, i32 noundef 0, i16 noundef zeroext -1524, i32 noundef %or.i) #7
  %213 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %verbose, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %216)
  %switch818 = icmp ult i32 %216, 4
  br i1 %switch818, label %stb0899_i2c_gate_ctrl.exit885.do.end476_crit_edge, label %do.end432

stb0899_i2c_gate_ctrl.exit885.do.end476_crit_edge: ; preds = %stb0899_i2c_gate_ctrl.exit885
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end476

do.end432:                                        ; preds = %stb0899_i2c_gate_ctrl.exit885
  call void @__sanitizer_cov_trace_pc() #9
  %call434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.512, ptr noundef nonnull @.str.441) #10
  br label %do.end476

do.end476:                                        ; preds = %do.end432, %stb0899_i2c_gate_ctrl.exit885.do.end476_crit_edge
  %call477 = call i32 @stb0899_dvbs2_algo(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call477)
  %cmp478 = icmp eq i32 %call477, 16
  %lock480 = getelementptr inbounds %struct.stb0899_state, ptr %1, i32 0, i32 4, i32 20
  br i1 %cmp478, label %if.then479, label %if.else535

if.then479:                                       ; preds = %do.end476
  %217 = ptrtoint ptr %lock480 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %lock480, align 4
  %218 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %verbose, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %221)
  %switch821 = icmp ult i32 %221, 4
  br i1 %switch821, label %if.then479.cleanup_crit_edge, label %do.end490

if.then479.cleanup_crit_edge:                     ; preds = %if.then479
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end490:                                        ; preds = %if.then479
  call void @__sanitizer_cov_trace_pc() #9
  %call492 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.524, ptr noundef nonnull @.str.441) #10
  br label %cleanup

if.else535:                                       ; preds = %do.end476
  call void @__sanitizer_cov_trace_pc() #9
  %222 = ptrtoint ptr %lock480 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %lock480, align 4
  br label %cleanup

do.body537:                                       ; preds = %if.end192
  %223 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %verbose, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %cmp539.not = icmp eq i32 %226, 0
  br i1 %cmp539.not, label %do.body537.cleanup_crit_edge, label %do.end546

do.body537.cleanup_crit_edge:                     ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end546:                                        ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #9
  %call548 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.441) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end546, %do.body537.cleanup_crit_edge, %if.else535, %do.end490, %if.then479.cleanup_crit_edge, %if.else391, %do.end346, %if.then336.cleanup_crit_edge, %do.end111.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %if.else535 ], [ 4, %if.else391 ], [ 1, %do.end346 ], [ 1, %do.end490 ], [ 8, %do.end546 ], [ -2147483648, %do.end111.cleanup_crit_edge ], [ 1, %if.then336.cleanup_crit_edge ], [ 1, %if.then479.cleanup_crit_edge ], [ 8, %do.body537.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stb0899_set_mclk(ptr nocapture noundef %state, i32 noundef %Mclk) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %internal1 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %verbose, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %entry.do.end47_crit_edge, label %do.end

entry.do.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %config = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.562, ptr noundef nonnull @.str.563, ptr noundef %5) #10
  br label %do.end47

do.end47:                                         ; preds = %do.end, %entry.do.end47_crit_edge
  %mul = mul i32 %Mclk, 6
  %config48 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %config48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config48, align 4
  %xtal_freq = getelementptr inbounds %struct.stb0899_config, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xtal_freq, align 4
  %div = udiv i32 %mul, %9
  %10 = trunc i32 %div to i8
  %conv = add i8 %10, -1
  %11 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %verbose, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %switch240 = icmp ult i32 %14, 4
  br i1 %switch240, label %do.end47.do.end114_crit_edge, label %do.end60

do.end47.do.end114_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114

do.end60:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  %conv62 = zext i8 %conv to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.574, ptr noundef nonnull @.str.563, i32 noundef %conv62) #10
  br label %do.end114

do.end114:                                        ; preds = %do.end60, %do.end47.do.end114_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i = call i32 @stb0899_write_regs(ptr noundef %state, i32 noundef 61875, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %call.i.i = call fastcc i32 @_stb0899_read_reg(ptr noundef %state, i32 noundef 61875) #7
  %add.i = add i32 %call.i.i, 1
  %16 = ptrtoint ptr %config48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config48, align 4
  %xtal_freq.i = getelementptr inbounds %struct.stb0899_config, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %xtal_freq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xtal_freq.i, align 4
  %mul.i = mul i32 %19, %add.i
  %div1.i = udiv i32 %mul.i, 6
  %20 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %verbose, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %switch.i = icmp ult i32 %23, 4
  br i1 %switch.i, label %do.end114.stb0899_get_mclk.exit_crit_edge, label %do.end.i

do.end114.stb0899_get_mclk.exit_crit_edge:        ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb0899_get_mclk.exit

do.end.i:                                         ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef %call.i.i, i32 noundef %div1.i) #10
  br label %stb0899_get_mclk.exit

stb0899_get_mclk.exit:                            ; preds = %do.end.i, %do.end114.stb0899_get_mclk.exit_crit_edge
  %24 = ptrtoint ptr %internal1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div1.i, ptr %internal1, align 4
  %25 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %verbose, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %switch243 = icmp ult i32 %28, 4
  br i1 %switch243, label %stb0899_get_mclk.exit.do.end182_crit_edge, label %do.end128

stb0899_get_mclk.exit.do.end182_crit_edge:        ; preds = %stb0899_get_mclk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end182

do.end128:                                        ; preds = %stb0899_get_mclk.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.586, ptr noundef nonnull @.str.563, i32 noundef %div1.i) #10
  br label %do.end182

do.end182:                                        ; preds = %do.end128, %stb0899_get_mclk.exit.do.end182_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_carr_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_dvbs_algo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_dvbs2_algo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 474)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 474)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !135, !137, !139, !140, !141, !143, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !172, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !427, !428, !429, !430, !431, !432, !433, !434, !435, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !464, !465, !466, !467, !468, !469, !470, !471, !473, !475, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !504, !505, !506, !507, !508, !509, !510, !511, !513, !515, !517, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !547, !548, !549, !550, !551, !552, !553, !554, !555, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !662, !663, !664, !665, !666, !667, !668, !669, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !685, !686, !687, !688, !689, !690, !691, !692, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!llvm.module.flags = !{!798, !799, !800, !801, !802, !803, !804, !805}
!llvm.ident = !{!806}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype290, !1, !"__UNIQUE_ID_verbosetype290", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 321, i32 4}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @_stb0899_read_s2reg._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @_stb0899_read_s2reg._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 343, i32 4}
!11 = !{ptr @_stb0899_read_s2reg._entry.3, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @_stb0899_read_s2reg._entry_ptr.5, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 351, i32 4}
!15 = !{ptr @_stb0899_read_s2reg._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @_stb0899_read_s2reg._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 358, i32 3}
!19 = !{ptr @_stb0899_read_s2reg._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @_stb0899_read_s2reg._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 415, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stb0899_write_s2reg._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @stb0899_write_s2reg._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 421, i32 4}
!28 = !{ptr @stb0899_write_s2reg._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stb0899_write_s2reg._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 428, i32 4}
!32 = !{ptr @stb0899_write_s2reg._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stb0899_write_s2reg._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 463, i32 4}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @stb0899_read_regs._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @stb0899_read_regs._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 476, i32 2}
!41 = !{ptr @stb0899_read_regs._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @stb0899_read_regs._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @stb0899_read_regs._entry.25, !40, !"_entry", i1 false, i1 false}
!45 = !{ptr @stb0899_read_regs._entry_ptr.27, !40, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @stb0899_read_regs._entry.28, !40, !"_entry", i1 false, i1 false}
!48 = !{ptr @stb0899_read_regs._entry_ptr.30, !40, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.32, !40, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @stb0899_read_regs._entry.31, !40, !"_entry", i1 false, i1 false}
!51 = !{ptr @stb0899_read_regs._entry_ptr.33, !40, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 496, i32 3}
!54 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @stb0899_write_regs._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @stb0899_write_regs._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @stb0899_write_regs._entry.37, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 506, i32 2}
!60 = !{ptr @stb0899_write_regs._entry_ptr.38, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @stb0899_write_regs._entry.39, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @stb0899_write_regs._entry_ptr.40, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @stb0899_write_regs._entry.41, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @stb0899_write_regs._entry_ptr.42, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @stb0899_write_regs._entry.43, !59, !"_entry", i1 false, i1 false}
!66 = !{ptr @stb0899_write_regs._entry_ptr.44, !59, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.46, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 520, i32 4}
!69 = !{ptr @stb0899_write_regs._entry.45, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @stb0899_write_regs._entry_ptr.47, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.49, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @stb0899_write_regs._entry.48, !68, !"_entry", i1 false, i1 false}
!73 = !{ptr @stb0899_write_regs._entry_ptr.50, !68, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.52, !68, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @stb0899_write_regs._entry.51, !68, !"_entry", i1 false, i1 false}
!76 = !{ptr @stb0899_write_regs._entry_ptr.53, !68, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.55, !68, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @stb0899_write_regs._entry.54, !68, !"_entry", i1 false, i1 false}
!79 = !{ptr @stb0899_write_regs._entry_ptr.56, !68, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.57, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1232, i32 3}
!82 = !{ptr @.str.58, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @stb0899_i2c_gate_ctrl._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.60, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @stb0899_i2c_gate_ctrl._entry.59, !81, !"_entry", i1 false, i1 false}
!87 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.61, !81, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.63, !81, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @stb0899_i2c_gate_ctrl._entry.62, !81, !"_entry", i1 false, i1 false}
!90 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.64, !81, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.66, !81, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @stb0899_i2c_gate_ctrl._entry.65, !81, !"_entry", i1 false, i1 false}
!93 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.67, !81, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.69, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1237, i32 3}
!96 = !{ptr @stb0899_i2c_gate_ctrl._entry.68, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.70, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.72, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @stb0899_i2c_gate_ctrl._entry.71, !95, !"_entry", i1 false, i1 false}
!100 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.73, !95, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.75, !95, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @stb0899_i2c_gate_ctrl._entry.74, !95, !"_entry", i1 false, i1 false}
!103 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.76, !95, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.78, !95, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @stb0899_i2c_gate_ctrl._entry.77, !95, !"_entry", i1 false, i1 false}
!106 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.79, !95, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.81, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1244, i32 2}
!109 = !{ptr @stb0899_i2c_gate_ctrl._entry.80, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.82, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.84, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @stb0899_i2c_gate_ctrl._entry.83, !108, !"_entry", i1 false, i1 false}
!113 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.85, !108, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.87, !108, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @stb0899_i2c_gate_ctrl._entry.86, !108, !"_entry", i1 false, i1 false}
!116 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.88, !108, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.90, !108, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @stb0899_i2c_gate_ctrl._entry.89, !108, !"_entry", i1 false, i1 false}
!119 = !{ptr @stb0899_i2c_gate_ctrl._entry_ptr.91, !108, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.92, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1630, i32 3}
!122 = !{ptr @.str.93, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @stb0899_attach._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @stb0899_attach._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.95, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1634, i32 2}
!127 = !{ptr @stb0899_attach._entry.94, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @stb0899_attach._entry_ptr.96, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @__ksymtab_stb0899_attach, !130, !"__ksymtab_stb0899_attach", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1641, i32 1}
!131 = !{ptr @__UNIQUE_ID_verbose291, !132, !"__UNIQUE_ID_verbose291", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1642, i32 1}
!133 = !{ptr @__UNIQUE_ID_author292, !134, !"__UNIQUE_ID_author292", i1 false, i1 false}
!134 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1643, i32 1}
!135 = !{ptr @__UNIQUE_ID_description293, !136, !"__UNIQUE_ID_description293", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1644, i32 1}
!137 = !{ptr @__UNIQUE_ID_file294, !138, !"__UNIQUE_ID_file294", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1645, i32 1}
!139 = !{ptr @__UNIQUE_ID_license295, !138, !"__UNIQUE_ID_license295", i1 false, i1 false}
!140 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!141 = !{ptr @verbose, !142, !"verbose", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 27, i32 21}
!143 = !{ptr @.str.97, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 237, i32 4}
!145 = !{ptr @.str.98, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @_stb0899_read_reg._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @_stb0899_read_reg._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.100, !144, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @_stb0899_read_reg._entry.99, !144, !"_entry", i1 false, i1 false}
!150 = !{ptr @_stb0899_read_reg._entry_ptr.101, !144, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.103, !144, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @_stb0899_read_reg._entry.102, !144, !"_entry", i1 false, i1 false}
!153 = !{ptr @_stb0899_read_reg._entry_ptr.104, !144, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.106, !144, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @_stb0899_read_reg._entry.105, !144, !"_entry", i1 false, i1 false}
!156 = !{ptr @_stb0899_read_reg._entry_ptr.107, !144, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.109, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 244, i32 3}
!159 = !{ptr @_stb0899_read_reg._entry.108, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @_stb0899_read_reg._entry_ptr.110, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.112, !158, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @_stb0899_read_reg._entry.111, !158, !"_entry", i1 false, i1 false}
!163 = !{ptr @_stb0899_read_reg._entry_ptr.113, !158, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.115, !158, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @_stb0899_read_reg._entry.114, !158, !"_entry", i1 false, i1 false}
!166 = !{ptr @_stb0899_read_reg._entry_ptr.116, !158, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.118, !158, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @_stb0899_read_reg._entry.117, !158, !"_entry", i1 false, i1 false}
!169 = !{ptr @_stb0899_read_reg._entry_ptr.119, !158, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @stb0899_ops, !171, !"stb0899_ops", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1571, i32 38}
!172 = !{ptr @.str.120, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 605, i32 2}
!174 = !{ptr @.str.121, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @stb0899_release._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @stb0899_release._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.123, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @stb0899_release._entry.122, !173, !"_entry", i1 false, i1 false}
!179 = !{ptr @stb0899_release._entry_ptr.124, !173, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.126, !173, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @stb0899_release._entry.125, !173, !"_entry", i1 false, i1 false}
!182 = !{ptr @stb0899_release._entry_ptr.127, !173, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.129, !173, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @stb0899_release._entry.128, !173, !"_entry", i1 false, i1 false}
!185 = !{ptr @stb0899_release._entry_ptr.130, !173, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.131, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 883, i32 2}
!188 = !{ptr @.str.132, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @stb0899_init._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @stb0899_init._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.134, !187, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @stb0899_init._entry.133, !187, !"_entry", i1 false, i1 false}
!193 = !{ptr @stb0899_init._entry_ptr.135, !187, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.137, !187, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @stb0899_init._entry.136, !187, !"_entry", i1 false, i1 false}
!196 = !{ptr @stb0899_init._entry_ptr.138, !187, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.140, !187, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @stb0899_init._entry.139, !187, !"_entry", i1 false, i1 false}
!199 = !{ptr @stb0899_init._entry_ptr.141, !187, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.143, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 886, i32 2}
!202 = !{ptr @stb0899_init._entry.142, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @stb0899_init._entry_ptr.144, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.146, !201, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @stb0899_init._entry.145, !201, !"_entry", i1 false, i1 false}
!206 = !{ptr @stb0899_init._entry_ptr.147, !201, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.149, !201, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @stb0899_init._entry.148, !201, !"_entry", i1 false, i1 false}
!209 = !{ptr @stb0899_init._entry_ptr.150, !201, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.152, !201, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @stb0899_init._entry.151, !201, !"_entry", i1 false, i1 false}
!212 = !{ptr @stb0899_init._entry_ptr.153, !201, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.155, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 890, i32 2}
!215 = !{ptr @stb0899_init._entry.154, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @stb0899_init._entry_ptr.156, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.158, !214, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @stb0899_init._entry.157, !214, !"_entry", i1 false, i1 false}
!219 = !{ptr @stb0899_init._entry_ptr.159, !214, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.161, !214, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @stb0899_init._entry.160, !214, !"_entry", i1 false, i1 false}
!222 = !{ptr @stb0899_init._entry_ptr.162, !214, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.164, !214, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @stb0899_init._entry.163, !214, !"_entry", i1 false, i1 false}
!225 = !{ptr @stb0899_init._entry_ptr.165, !214, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.167, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 898, i32 2}
!228 = !{ptr @stb0899_init._entry.166, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @stb0899_init._entry_ptr.168, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.170, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @stb0899_init._entry.169, !227, !"_entry", i1 false, i1 false}
!232 = !{ptr @stb0899_init._entry_ptr.171, !227, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.173, !227, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @stb0899_init._entry.172, !227, !"_entry", i1 false, i1 false}
!235 = !{ptr @stb0899_init._entry_ptr.174, !227, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.176, !227, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @stb0899_init._entry.175, !227, !"_entry", i1 false, i1 false}
!238 = !{ptr @stb0899_init._entry_ptr.177, !227, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.179, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 903, i32 2}
!241 = !{ptr @stb0899_init._entry.178, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @stb0899_init._entry_ptr.180, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.182, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @stb0899_init._entry.181, !240, !"_entry", i1 false, i1 false}
!245 = !{ptr @stb0899_init._entry_ptr.183, !240, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.185, !240, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @stb0899_init._entry.184, !240, !"_entry", i1 false, i1 false}
!248 = !{ptr @stb0899_init._entry_ptr.186, !240, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.188, !240, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @stb0899_init._entry.187, !240, !"_entry", i1 false, i1 false}
!251 = !{ptr @stb0899_init._entry_ptr.189, !240, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.191, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 911, i32 2}
!254 = !{ptr @stb0899_init._entry.190, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @stb0899_init._entry_ptr.192, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.194, !253, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @stb0899_init._entry.193, !253, !"_entry", i1 false, i1 false}
!258 = !{ptr @stb0899_init._entry_ptr.195, !253, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.197, !253, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @stb0899_init._entry.196, !253, !"_entry", i1 false, i1 false}
!261 = !{ptr @stb0899_init._entry_ptr.198, !253, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.200, !253, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @stb0899_init._entry.199, !253, !"_entry", i1 false, i1 false}
!264 = !{ptr @stb0899_init._entry_ptr.201, !253, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.202, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 545, i32 2}
!267 = !{ptr @.str.203, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @stb0899_get_mclk._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @stb0899_get_mclk._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.205, !266, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @stb0899_get_mclk._entry.204, !266, !"_entry", i1 false, i1 false}
!272 = !{ptr @stb0899_get_mclk._entry_ptr.206, !266, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.208, !266, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @stb0899_get_mclk._entry.207, !266, !"_entry", i1 false, i1 false}
!275 = !{ptr @stb0899_get_mclk._entry_ptr.209, !266, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.211, !266, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @stb0899_get_mclk._entry.210, !266, !"_entry", i1 false, i1 false}
!278 = !{ptr @stb0899_get_mclk._entry_ptr.212, !266, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.213, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 851, i32 2}
!281 = !{ptr @.str.214, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @stb0899_sleep._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @stb0899_sleep._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.216, !280, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @stb0899_sleep._entry.215, !280, !"_entry", i1 false, i1 false}
!286 = !{ptr @stb0899_sleep._entry_ptr.217, !280, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.219, !280, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @stb0899_sleep._entry.218, !280, !"_entry", i1 false, i1 false}
!289 = !{ptr @stb0899_sleep._entry_ptr.220, !280, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.222, !280, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @stb0899_sleep._entry.221, !280, !"_entry", i1 false, i1 false}
!292 = !{ptr @stb0899_sleep._entry_ptr.223, !280, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.224, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1559, i32 2}
!295 = !{ptr @.str.225, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @stb0899_get_frontend._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @stb0899_get_frontend._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.227, !294, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @stb0899_get_frontend._entry.226, !294, !"_entry", i1 false, i1 false}
!300 = !{ptr @stb0899_get_frontend._entry_ptr.228, !294, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.230, !294, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @stb0899_get_frontend._entry.229, !294, !"_entry", i1 false, i1 false}
!303 = !{ptr @stb0899_get_frontend._entry_ptr.231, !294, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.233, !294, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @stb0899_get_frontend._entry.232, !294, !"_entry", i1 false, i1 false}
!306 = !{ptr @stb0899_get_frontend._entry_ptr.234, !294, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.235, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1059, i32 3}
!309 = !{ptr @.str.236, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @stb0899_read_status._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @stb0899_read_status._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.238, !308, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @stb0899_read_status._entry.237, !308, !"_entry", i1 false, i1 false}
!314 = !{ptr @stb0899_read_status._entry_ptr.239, !308, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.241, !308, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @stb0899_read_status._entry.240, !308, !"_entry", i1 false, i1 false}
!317 = !{ptr @stb0899_read_status._entry_ptr.242, !308, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.244, !308, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @stb0899_read_status._entry.243, !308, !"_entry", i1 false, i1 false}
!320 = !{ptr @stb0899_read_status._entry_ptr.245, !308, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.247, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1063, i32 5}
!323 = !{ptr @stb0899_read_status._entry.246, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @stb0899_read_status._entry_ptr.248, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.250, !322, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @stb0899_read_status._entry.249, !322, !"_entry", i1 false, i1 false}
!327 = !{ptr @stb0899_read_status._entry_ptr.251, !322, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.253, !322, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @stb0899_read_status._entry.252, !322, !"_entry", i1 false, i1 false}
!330 = !{ptr @stb0899_read_status._entry_ptr.254, !322, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.256, !322, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @stb0899_read_status._entry.255, !322, !"_entry", i1 false, i1 false}
!333 = !{ptr @stb0899_read_status._entry_ptr.257, !322, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.259, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1068, i32 6}
!336 = !{ptr @stb0899_read_status._entry.258, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @stb0899_read_status._entry_ptr.260, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.262, !335, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @stb0899_read_status._entry.261, !335, !"_entry", i1 false, i1 false}
!340 = !{ptr @stb0899_read_status._entry_ptr.263, !335, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.265, !335, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @stb0899_read_status._entry.264, !335, !"_entry", i1 false, i1 false}
!343 = !{ptr @stb0899_read_status._entry_ptr.266, !335, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.268, !335, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @stb0899_read_status._entry.267, !335, !"_entry", i1 false, i1 false}
!346 = !{ptr @stb0899_read_status._entry_ptr.269, !335, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.271, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1077, i32 3}
!349 = !{ptr @stb0899_read_status._entry.270, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @stb0899_read_status._entry_ptr.272, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.274, !348, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @stb0899_read_status._entry.273, !348, !"_entry", i1 false, i1 false}
!353 = !{ptr @stb0899_read_status._entry_ptr.275, !348, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.277, !348, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @stb0899_read_status._entry.276, !348, !"_entry", i1 false, i1 false}
!356 = !{ptr @stb0899_read_status._entry_ptr.278, !348, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.280, !348, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @stb0899_read_status._entry.279, !348, !"_entry", i1 false, i1 false}
!359 = !{ptr @stb0899_read_status._entry_ptr.281, !348, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.283, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1082, i32 5}
!362 = !{ptr @stb0899_read_status._entry.282, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @stb0899_read_status._entry_ptr.284, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.286, !361, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @stb0899_read_status._entry.285, !361, !"_entry", i1 false, i1 false}
!366 = !{ptr @stb0899_read_status._entry_ptr.287, !361, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.289, !361, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @stb0899_read_status._entry.288, !361, !"_entry", i1 false, i1 false}
!369 = !{ptr @stb0899_read_status._entry_ptr.290, !361, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.292, !361, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @stb0899_read_status._entry.291, !361, !"_entry", i1 false, i1 false}
!372 = !{ptr @stb0899_read_status._entry_ptr.293, !361, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.295, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1088, i32 6}
!375 = !{ptr @stb0899_read_status._entry.294, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @stb0899_read_status._entry_ptr.296, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.298, !374, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @stb0899_read_status._entry.297, !374, !"_entry", i1 false, i1 false}
!379 = !{ptr @stb0899_read_status._entry_ptr.299, !374, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.301, !374, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @stb0899_read_status._entry.300, !374, !"_entry", i1 false, i1 false}
!382 = !{ptr @stb0899_read_status._entry_ptr.302, !374, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.304, !374, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @stb0899_read_status._entry.303, !374, !"_entry", i1 false, i1 false}
!385 = !{ptr @stb0899_read_status._entry_ptr.305, !374, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.307, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1094, i32 6}
!388 = !{ptr @stb0899_read_status._entry.306, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @stb0899_read_status._entry_ptr.308, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.310, !387, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @stb0899_read_status._entry.309, !387, !"_entry", i1 false, i1 false}
!392 = !{ptr @stb0899_read_status._entry_ptr.311, !387, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.313, !387, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @stb0899_read_status._entry.312, !387, !"_entry", i1 false, i1 false}
!395 = !{ptr @stb0899_read_status._entry_ptr.314, !387, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.316, !387, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @stb0899_read_status._entry.315, !387, !"_entry", i1 false, i1 false}
!398 = !{ptr @stb0899_read_status._entry_ptr.317, !387, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.319, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1099, i32 6}
!401 = !{ptr @stb0899_read_status._entry.318, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @stb0899_read_status._entry_ptr.320, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.322, !400, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @stb0899_read_status._entry.321, !400, !"_entry", i1 false, i1 false}
!405 = !{ptr @stb0899_read_status._entry_ptr.323, !400, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.325, !400, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @stb0899_read_status._entry.324, !400, !"_entry", i1 false, i1 false}
!408 = !{ptr @stb0899_read_status._entry_ptr.326, !400, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.328, !400, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @stb0899_read_status._entry.327, !400, !"_entry", i1 false, i1 false}
!411 = !{ptr @stb0899_read_status._entry_ptr.329, !400, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.331, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1108, i32 3}
!414 = !{ptr @stb0899_read_status._entry.330, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @stb0899_read_status._entry_ptr.332, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.334, !413, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @stb0899_read_status._entry.333, !413, !"_entry", i1 false, i1 false}
!418 = !{ptr @stb0899_read_status._entry_ptr.335, !413, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.337, !413, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @stb0899_read_status._entry.336, !413, !"_entry", i1 false, i1 false}
!421 = !{ptr @stb0899_read_status._entry_ptr.338, !413, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.340, !413, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @stb0899_read_status._entry.339, !413, !"_entry", i1 false, i1 false}
!424 = !{ptr @stb0899_read_status._entry_ptr.341, !413, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.342, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1157, i32 3}
!427 = !{ptr @stb0899_read_ber._entry, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @stb0899_read_ber._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @stb0899_read_ber._entry.343, !426, !"_entry", i1 false, i1 false}
!430 = !{ptr @stb0899_read_ber._entry_ptr.344, !426, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @stb0899_read_ber._entry.345, !426, !"_entry", i1 false, i1 false}
!432 = !{ptr @stb0899_read_ber._entry_ptr.346, !426, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @stb0899_read_ber._entry.347, !426, !"_entry", i1 false, i1 false}
!434 = !{ptr @stb0899_read_ber._entry_ptr.348, !426, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.349, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 968, i32 5}
!437 = !{ptr @.str.350, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @stb0899_read_signal_strength._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @stb0899_read_signal_strength._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.352, !436, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @stb0899_read_signal_strength._entry.351, !436, !"_entry", i1 false, i1 false}
!442 = !{ptr @stb0899_read_signal_strength._entry_ptr.353, !436, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.355, !436, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @stb0899_read_signal_strength._entry.354, !436, !"_entry", i1 false, i1 false}
!445 = !{ptr @stb0899_read_signal_strength._entry_ptr.356, !436, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.358, !436, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @stb0899_read_signal_strength._entry.357, !436, !"_entry", i1 false, i1 false}
!448 = !{ptr @stb0899_read_signal_strength._entry_ptr.359, !436, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.361, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 980, i32 4}
!451 = !{ptr @stb0899_read_signal_strength._entry.360, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @stb0899_read_signal_strength._entry_ptr.362, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.364, !450, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @stb0899_read_signal_strength._entry.363, !450, !"_entry", i1 false, i1 false}
!455 = !{ptr @stb0899_read_signal_strength._entry_ptr.365, !450, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.367, !450, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @stb0899_read_signal_strength._entry.366, !450, !"_entry", i1 false, i1 false}
!458 = !{ptr @stb0899_read_signal_strength._entry_ptr.368, !450, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.370, !450, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @stb0899_read_signal_strength._entry.369, !450, !"_entry", i1 false, i1 false}
!461 = !{ptr @stb0899_read_signal_strength._entry_ptr.371, !450, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @stb0899_read_signal_strength._entry.372, !463, !"_entry", i1 false, i1 false}
!463 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 985, i32 3}
!464 = !{ptr @stb0899_read_signal_strength._entry_ptr.373, !463, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @stb0899_read_signal_strength._entry.374, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @stb0899_read_signal_strength._entry_ptr.375, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @stb0899_read_signal_strength._entry.376, !463, !"_entry", i1 false, i1 false}
!468 = !{ptr @stb0899_read_signal_strength._entry_ptr.377, !463, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @stb0899_read_signal_strength._entry.378, !463, !"_entry", i1 false, i1 false}
!470 = !{ptr @stb0899_read_signal_strength._entry_ptr.379, !463, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @stb0899_dvbsrf_tab, !472, !"stb0899_dvbsrf_tab", i1 false, i1 false}
!472 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 61, i32 33}
!473 = !{ptr @stb0899_dvbs2rf_tab, !474, !"stb0899_dvbs2rf_tab", i1 false, i1 false}
!474 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 102, i32 33}
!475 = !{ptr @.str.380, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1013, i32 5}
!477 = !{ptr @.str.381, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @stb0899_read_snr._entry, !476, !"_entry", i1 false, i1 false}
!479 = !{ptr @stb0899_read_snr._entry_ptr, !476, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.383, !476, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @stb0899_read_snr._entry.382, !476, !"_entry", i1 false, i1 false}
!482 = !{ptr @stb0899_read_snr._entry_ptr.384, !476, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.386, !476, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @stb0899_read_snr._entry.385, !476, !"_entry", i1 false, i1 false}
!485 = !{ptr @stb0899_read_snr._entry_ptr.387, !476, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.389, !476, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @stb0899_read_snr._entry.388, !476, !"_entry", i1 false, i1 false}
!488 = !{ptr @stb0899_read_snr._entry_ptr.390, !476, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.392, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1037, i32 4}
!491 = !{ptr @stb0899_read_snr._entry.391, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @stb0899_read_snr._entry_ptr.393, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.395, !490, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @stb0899_read_snr._entry.394, !490, !"_entry", i1 false, i1 false}
!495 = !{ptr @stb0899_read_snr._entry_ptr.396, !490, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.398, !490, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @stb0899_read_snr._entry.397, !490, !"_entry", i1 false, i1 false}
!498 = !{ptr @stb0899_read_snr._entry_ptr.399, !490, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.401, !490, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @stb0899_read_snr._entry.400, !490, !"_entry", i1 false, i1 false}
!501 = !{ptr @stb0899_read_snr._entry_ptr.402, !490, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @stb0899_read_snr._entry.403, !503, !"_entry", i1 false, i1 false}
!503 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1042, i32 3}
!504 = !{ptr @stb0899_read_snr._entry_ptr.404, !503, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @stb0899_read_snr._entry.405, !503, !"_entry", i1 false, i1 false}
!506 = !{ptr @stb0899_read_snr._entry_ptr.406, !503, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @stb0899_read_snr._entry.407, !503, !"_entry", i1 false, i1 false}
!508 = !{ptr @stb0899_read_snr._entry_ptr.408, !503, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @stb0899_read_snr._entry.409, !503, !"_entry", i1 false, i1 false}
!510 = !{ptr @stb0899_read_snr._entry_ptr.410, !503, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @stb0899_cn_tab, !512, !"stb0899_cn_tab", i1 false, i1 false}
!512 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 31, i32 33}
!513 = !{ptr @stb0899_quant_tab, !514, !"stb0899_quant_tab", i1 false, i1 false}
!514 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 130, i32 27}
!515 = !{ptr @stb0899_est_tab, !516, !"stb0899_est_tab", i1 false, i1 false}
!516 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 173, i32 27}
!517 = !{ptr @.str.411, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 678, i32 4}
!519 = !{ptr @.str.412, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @stb0899_wait_diseqc_fifo_empty._entry, !518, !"_entry", i1 false, i1 false}
!521 = !{ptr @stb0899_wait_diseqc_fifo_empty._entry_ptr, !518, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.414, !518, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @stb0899_wait_diseqc_fifo_empty._entry.413, !518, !"_entry", i1 false, i1 false}
!524 = !{ptr @stb0899_wait_diseqc_fifo_empty._entry_ptr.415, !518, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.417, !518, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @stb0899_wait_diseqc_fifo_empty._entry.416, !518, !"_entry", i1 false, i1 false}
!527 = !{ptr @stb0899_wait_diseqc_fifo_empty._entry_ptr.418, !518, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.420, !518, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @stb0899_wait_diseqc_fifo_empty._entry.419, !518, !"_entry", i1 false, i1 false}
!530 = !{ptr @stb0899_wait_diseqc_fifo_empty._entry_ptr.421, !518, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @.str.422, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 720, i32 4}
!533 = !{ptr @.str.423, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @stb0899_wait_diseqc_rxidle._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @stb0899_wait_diseqc_rxidle._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.425, !532, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @stb0899_wait_diseqc_rxidle._entry.424, !532, !"_entry", i1 false, i1 false}
!538 = !{ptr @stb0899_wait_diseqc_rxidle._entry_ptr.426, !532, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @.str.428, !532, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @stb0899_wait_diseqc_rxidle._entry.427, !532, !"_entry", i1 false, i1 false}
!541 = !{ptr @stb0899_wait_diseqc_rxidle._entry_ptr.429, !532, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.431, !532, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @stb0899_wait_diseqc_rxidle._entry.430, !532, !"_entry", i1 false, i1 false}
!544 = !{ptr @stb0899_wait_diseqc_rxidle._entry_ptr.432, !532, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.433, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 769, i32 4}
!547 = !{ptr @stb0899_wait_diseqc_txidle._entry, !546, !"_entry", i1 false, i1 false}
!548 = !{ptr @stb0899_wait_diseqc_txidle._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @stb0899_wait_diseqc_txidle._entry.434, !546, !"_entry", i1 false, i1 false}
!550 = !{ptr @stb0899_wait_diseqc_txidle._entry_ptr.435, !546, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @stb0899_wait_diseqc_txidle._entry.436, !546, !"_entry", i1 false, i1 false}
!552 = !{ptr @stb0899_wait_diseqc_txidle._entry_ptr.437, !546, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @stb0899_wait_diseqc_txidle._entry.438, !546, !"_entry", i1 false, i1 false}
!554 = !{ptr @stb0899_wait_diseqc_txidle._entry_ptr.439, !546, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.440, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1428, i32 2}
!557 = !{ptr @.str.441, !556, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @stb0899_search._entry, !556, !"_entry", i1 false, i1 false}
!559 = !{ptr @stb0899_search._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.443, !556, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @stb0899_search._entry.442, !556, !"_entry", i1 false, i1 false}
!562 = !{ptr @stb0899_search._entry_ptr.444, !556, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.446, !556, !"<string literal>", i1 false, i1 false}
!564 = !{ptr @stb0899_search._entry.445, !556, !"_entry", i1 false, i1 false}
!565 = !{ptr @stb0899_search._entry_ptr.447, !556, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.449, !556, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @stb0899_search._entry.448, !556, !"_entry", i1 false, i1 false}
!568 = !{ptr @stb0899_search._entry_ptr.450, !556, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @.str.452, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1431, i32 2}
!571 = !{ptr @stb0899_search._entry.451, !570, !"_entry", i1 false, i1 false}
!572 = !{ptr @stb0899_search._entry_ptr.453, !570, !"_entry_ptr", i1 false, i1 false}
!573 = !{ptr @.str.455, !570, !"<string literal>", i1 false, i1 false}
!574 = !{ptr @stb0899_search._entry.454, !570, !"_entry", i1 false, i1 false}
!575 = !{ptr @stb0899_search._entry_ptr.456, !570, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @.str.458, !570, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @stb0899_search._entry.457, !570, !"_entry", i1 false, i1 false}
!578 = !{ptr @stb0899_search._entry_ptr.459, !570, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.461, !570, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @stb0899_search._entry.460, !570, !"_entry", i1 false, i1 false}
!581 = !{ptr @stb0899_search._entry_ptr.462, !570, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.464, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1434, i32 3}
!584 = !{ptr @stb0899_search._entry.463, !583, !"_entry", i1 false, i1 false}
!585 = !{ptr @stb0899_search._entry_ptr.465, !583, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.467, !583, !"<string literal>", i1 false, i1 false}
!587 = !{ptr @stb0899_search._entry.466, !583, !"_entry", i1 false, i1 false}
!588 = !{ptr @stb0899_search._entry_ptr.468, !583, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.470, !583, !"<string literal>", i1 false, i1 false}
!590 = !{ptr @stb0899_search._entry.469, !583, !"_entry", i1 false, i1 false}
!591 = !{ptr @stb0899_search._entry_ptr.471, !583, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.473, !583, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @stb0899_search._entry.472, !583, !"_entry", i1 false, i1 false}
!594 = !{ptr @stb0899_search._entry_ptr.474, !583, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.476, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1455, i32 4}
!597 = !{ptr @stb0899_search._entry.475, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @stb0899_search._entry_ptr.477, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.479, !596, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @stb0899_search._entry.478, !596, !"_entry", i1 false, i1 false}
!601 = !{ptr @stb0899_search._entry_ptr.480, !596, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @.str.482, !596, !"<string literal>", i1 false, i1 false}
!603 = !{ptr @stb0899_search._entry.481, !596, !"_entry", i1 false, i1 false}
!604 = !{ptr @stb0899_search._entry_ptr.483, !596, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @.str.485, !596, !"<string literal>", i1 false, i1 false}
!606 = !{ptr @stb0899_search._entry.484, !596, !"_entry", i1 false, i1 false}
!607 = !{ptr @stb0899_search._entry_ptr.486, !596, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.488, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1483, i32 4}
!610 = !{ptr @stb0899_search._entry.487, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @stb0899_search._entry_ptr.489, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.491, !609, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @stb0899_search._entry.490, !609, !"_entry", i1 false, i1 false}
!614 = !{ptr @stb0899_search._entry_ptr.492, !609, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.494, !609, !"<string literal>", i1 false, i1 false}
!616 = !{ptr @stb0899_search._entry.493, !609, !"_entry", i1 false, i1 false}
!617 = !{ptr @stb0899_search._entry_ptr.495, !609, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.497, !609, !"<string literal>", i1 false, i1 false}
!619 = !{ptr @stb0899_search._entry.496, !609, !"_entry", i1 false, i1 false}
!620 = !{ptr @stb0899_search._entry_ptr.498, !609, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.500, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1486, i32 5}
!623 = !{ptr @stb0899_search._entry.499, !622, !"_entry", i1 false, i1 false}
!624 = !{ptr @stb0899_search._entry_ptr.501, !622, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @.str.503, !622, !"<string literal>", i1 false, i1 false}
!626 = !{ptr @stb0899_search._entry.502, !622, !"_entry", i1 false, i1 false}
!627 = !{ptr @stb0899_search._entry_ptr.504, !622, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @.str.506, !622, !"<string literal>", i1 false, i1 false}
!629 = !{ptr @stb0899_search._entry.505, !622, !"_entry", i1 false, i1 false}
!630 = !{ptr @stb0899_search._entry_ptr.507, !622, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @.str.509, !622, !"<string literal>", i1 false, i1 false}
!632 = !{ptr @stb0899_search._entry.508, !622, !"_entry", i1 false, i1 false}
!633 = !{ptr @stb0899_search._entry_ptr.510, !622, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.512, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1527, i32 4}
!636 = !{ptr @stb0899_search._entry.511, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @stb0899_search._entry_ptr.513, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.515, !635, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @stb0899_search._entry.514, !635, !"_entry", i1 false, i1 false}
!640 = !{ptr @stb0899_search._entry_ptr.516, !635, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.518, !635, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @stb0899_search._entry.517, !635, !"_entry", i1 false, i1 false}
!643 = !{ptr @stb0899_search._entry_ptr.519, !635, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @.str.521, !635, !"<string literal>", i1 false, i1 false}
!645 = !{ptr @stb0899_search._entry.520, !635, !"_entry", i1 false, i1 false}
!646 = !{ptr @stb0899_search._entry_ptr.522, !635, !"_entry_ptr", i1 false, i1 false}
!647 = !{ptr @.str.524, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1530, i32 5}
!649 = !{ptr @stb0899_search._entry.523, !648, !"_entry", i1 false, i1 false}
!650 = !{ptr @stb0899_search._entry_ptr.525, !648, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @.str.527, !648, !"<string literal>", i1 false, i1 false}
!652 = !{ptr @stb0899_search._entry.526, !648, !"_entry", i1 false, i1 false}
!653 = !{ptr @stb0899_search._entry_ptr.528, !648, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.530, !648, !"<string literal>", i1 false, i1 false}
!655 = !{ptr @stb0899_search._entry.529, !648, !"_entry", i1 false, i1 false}
!656 = !{ptr @stb0899_search._entry_ptr.531, !648, !"_entry_ptr", i1 false, i1 false}
!657 = !{ptr @.str.533, !648, !"<string literal>", i1 false, i1 false}
!658 = !{ptr @stb0899_search._entry.532, !648, !"_entry", i1 false, i1 false}
!659 = !{ptr @stb0899_search._entry_ptr.534, !648, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @stb0899_search._entry.535, !661, !"_entry", i1 false, i1 false}
!661 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1545, i32 4}
!662 = !{ptr @stb0899_search._entry_ptr.536, !661, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @stb0899_search._entry.537, !661, !"_entry", i1 false, i1 false}
!664 = !{ptr @stb0899_search._entry_ptr.538, !661, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @stb0899_search._entry.539, !661, !"_entry", i1 false, i1 false}
!666 = !{ptr @stb0899_search._entry_ptr.540, !661, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @stb0899_search._entry.541, !661, !"_entry", i1 false, i1 false}
!668 = !{ptr @stb0899_search._entry_ptr.542, !661, !"_entry_ptr", i1 false, i1 false}
!669 = !{ptr @.str.543, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1300, i32 3}
!671 = !{ptr @.str.544, !670, !"<string literal>", i1 false, i1 false}
!672 = !{ptr @stb0899_set_delivery._entry, !670, !"_entry", i1 false, i1 false}
!673 = !{ptr @stb0899_set_delivery._entry_ptr, !670, !"_entry_ptr", i1 false, i1 false}
!674 = !{ptr @.str.546, !670, !"<string literal>", i1 false, i1 false}
!675 = !{ptr @stb0899_set_delivery._entry.545, !670, !"_entry", i1 false, i1 false}
!676 = !{ptr @stb0899_set_delivery._entry_ptr.547, !670, !"_entry_ptr", i1 false, i1 false}
!677 = !{ptr @.str.549, !670, !"<string literal>", i1 false, i1 false}
!678 = !{ptr @stb0899_set_delivery._entry.548, !670, !"_entry", i1 false, i1 false}
!679 = !{ptr @stb0899_set_delivery._entry_ptr.550, !670, !"_entry_ptr", i1 false, i1 false}
!680 = !{ptr @.str.552, !670, !"<string literal>", i1 false, i1 false}
!681 = !{ptr @stb0899_set_delivery._entry.551, !670, !"_entry", i1 false, i1 false}
!682 = !{ptr @stb0899_set_delivery._entry_ptr.553, !670, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @stb0899_set_delivery._entry.554, !684, !"_entry", i1 false, i1 false}
!684 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1383, i32 3}
!685 = !{ptr @stb0899_set_delivery._entry_ptr.555, !684, !"_entry_ptr", i1 false, i1 false}
!686 = !{ptr @stb0899_set_delivery._entry.556, !684, !"_entry", i1 false, i1 false}
!687 = !{ptr @stb0899_set_delivery._entry_ptr.557, !684, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @stb0899_set_delivery._entry.558, !684, !"_entry", i1 false, i1 false}
!689 = !{ptr @stb0899_set_delivery._entry_ptr.559, !684, !"_entry_ptr", i1 false, i1 false}
!690 = !{ptr @stb0899_set_delivery._entry.560, !684, !"_entry", i1 false, i1 false}
!691 = !{ptr @stb0899_set_delivery._entry_ptr.561, !684, !"_entry_ptr", i1 false, i1 false}
!692 = !{ptr @.str.562, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 561, i32 2}
!694 = !{ptr @.str.563, !693, !"<string literal>", i1 false, i1 false}
!695 = !{ptr @stb0899_set_mclk._entry, !693, !"_entry", i1 false, i1 false}
!696 = !{ptr @stb0899_set_mclk._entry_ptr, !693, !"_entry_ptr", i1 false, i1 false}
!697 = !{ptr @.str.565, !693, !"<string literal>", i1 false, i1 false}
!698 = !{ptr @stb0899_set_mclk._entry.564, !693, !"_entry", i1 false, i1 false}
!699 = !{ptr @stb0899_set_mclk._entry_ptr.566, !693, !"_entry_ptr", i1 false, i1 false}
!700 = !{ptr @.str.568, !693, !"<string literal>", i1 false, i1 false}
!701 = !{ptr @stb0899_set_mclk._entry.567, !693, !"_entry", i1 false, i1 false}
!702 = !{ptr @stb0899_set_mclk._entry_ptr.569, !693, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @.str.571, !693, !"<string literal>", i1 false, i1 false}
!704 = !{ptr @stb0899_set_mclk._entry.570, !693, !"_entry", i1 false, i1 false}
!705 = !{ptr @stb0899_set_mclk._entry_ptr.572, !693, !"_entry_ptr", i1 false, i1 false}
!706 = !{ptr @.str.574, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 563, i32 2}
!708 = !{ptr @stb0899_set_mclk._entry.573, !707, !"_entry", i1 false, i1 false}
!709 = !{ptr @stb0899_set_mclk._entry_ptr.575, !707, !"_entry_ptr", i1 false, i1 false}
!710 = !{ptr @.str.577, !707, !"<string literal>", i1 false, i1 false}
!711 = !{ptr @stb0899_set_mclk._entry.576, !707, !"_entry", i1 false, i1 false}
!712 = !{ptr @stb0899_set_mclk._entry_ptr.578, !707, !"_entry_ptr", i1 false, i1 false}
!713 = !{ptr @.str.580, !707, !"<string literal>", i1 false, i1 false}
!714 = !{ptr @stb0899_set_mclk._entry.579, !707, !"_entry", i1 false, i1 false}
!715 = !{ptr @stb0899_set_mclk._entry_ptr.581, !707, !"_entry_ptr", i1 false, i1 false}
!716 = !{ptr @.str.583, !707, !"<string literal>", i1 false, i1 false}
!717 = !{ptr @stb0899_set_mclk._entry.582, !707, !"_entry", i1 false, i1 false}
!718 = !{ptr @stb0899_set_mclk._entry_ptr.584, !707, !"_entry_ptr", i1 false, i1 false}
!719 = !{ptr @.str.586, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 568, i32 2}
!721 = !{ptr @stb0899_set_mclk._entry.585, !720, !"_entry", i1 false, i1 false}
!722 = !{ptr @stb0899_set_mclk._entry_ptr.587, !720, !"_entry_ptr", i1 false, i1 false}
!723 = !{ptr @.str.589, !720, !"<string literal>", i1 false, i1 false}
!724 = !{ptr @stb0899_set_mclk._entry.588, !720, !"_entry", i1 false, i1 false}
!725 = !{ptr @stb0899_set_mclk._entry_ptr.590, !720, !"_entry_ptr", i1 false, i1 false}
!726 = !{ptr @.str.592, !720, !"<string literal>", i1 false, i1 false}
!727 = !{ptr @stb0899_set_mclk._entry.591, !720, !"_entry", i1 false, i1 false}
!728 = !{ptr @stb0899_set_mclk._entry_ptr.593, !720, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @.str.595, !720, !"<string literal>", i1 false, i1 false}
!730 = !{ptr @stb0899_set_mclk._entry.594, !720, !"_entry", i1 false, i1 false}
!731 = !{ptr @stb0899_set_mclk._entry_ptr.596, !720, !"_entry_ptr", i1 false, i1 false}
!732 = !{ptr @.str.597, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1267, i32 2}
!734 = !{ptr @.str.598, !733, !"<string literal>", i1 false, i1 false}
!735 = !{ptr @stb0899_get_dev_id._entry, !733, !"_entry", i1 false, i1 false}
!736 = !{ptr @stb0899_get_dev_id._entry_ptr, !733, !"_entry_ptr", i1 false, i1 false}
!737 = !{ptr @.str.600, !733, !"<string literal>", i1 false, i1 false}
!738 = !{ptr @stb0899_get_dev_id._entry.599, !733, !"_entry", i1 false, i1 false}
!739 = !{ptr @stb0899_get_dev_id._entry_ptr.601, !733, !"_entry_ptr", i1 false, i1 false}
!740 = !{ptr @.str.603, !733, !"<string literal>", i1 false, i1 false}
!741 = !{ptr @stb0899_get_dev_id._entry.602, !733, !"_entry", i1 false, i1 false}
!742 = !{ptr @stb0899_get_dev_id._entry_ptr.604, !733, !"_entry_ptr", i1 false, i1 false}
!743 = !{ptr @.str.606, !733, !"<string literal>", i1 false, i1 false}
!744 = !{ptr @stb0899_get_dev_id._entry.605, !733, !"_entry", i1 false, i1 false}
!745 = !{ptr @stb0899_get_dev_id._entry_ptr.607, !733, !"_entry_ptr", i1 false, i1 false}
!746 = !{ptr @.str.609, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1271, i32 2}
!748 = !{ptr @stb0899_get_dev_id._entry.608, !747, !"_entry", i1 false, i1 false}
!749 = !{ptr @stb0899_get_dev_id._entry_ptr.610, !747, !"_entry_ptr", i1 false, i1 false}
!750 = !{ptr @.str.612, !747, !"<string literal>", i1 false, i1 false}
!751 = !{ptr @stb0899_get_dev_id._entry.611, !747, !"_entry", i1 false, i1 false}
!752 = !{ptr @stb0899_get_dev_id._entry_ptr.613, !747, !"_entry_ptr", i1 false, i1 false}
!753 = !{ptr @.str.615, !747, !"<string literal>", i1 false, i1 false}
!754 = !{ptr @stb0899_get_dev_id._entry.614, !747, !"_entry", i1 false, i1 false}
!755 = !{ptr @stb0899_get_dev_id._entry_ptr.616, !747, !"_entry_ptr", i1 false, i1 false}
!756 = !{ptr @.str.618, !747, !"<string literal>", i1 false, i1 false}
!757 = !{ptr @stb0899_get_dev_id._entry.617, !747, !"_entry", i1 false, i1 false}
!758 = !{ptr @stb0899_get_dev_id._entry_ptr.619, !747, !"_entry_ptr", i1 false, i1 false}
!759 = !{ptr @.str.621, !760, !"<string literal>", i1 false, i1 false}
!760 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1277, i32 2}
!761 = !{ptr @stb0899_get_dev_id._entry.620, !760, !"_entry", i1 false, i1 false}
!762 = !{ptr @stb0899_get_dev_id._entry_ptr.622, !760, !"_entry_ptr", i1 false, i1 false}
!763 = !{ptr @.str.624, !760, !"<string literal>", i1 false, i1 false}
!764 = !{ptr @stb0899_get_dev_id._entry.623, !760, !"_entry", i1 false, i1 false}
!765 = !{ptr @stb0899_get_dev_id._entry_ptr.625, !760, !"_entry_ptr", i1 false, i1 false}
!766 = !{ptr @.str.627, !760, !"<string literal>", i1 false, i1 false}
!767 = !{ptr @stb0899_get_dev_id._entry.626, !760, !"_entry", i1 false, i1 false}
!768 = !{ptr @stb0899_get_dev_id._entry_ptr.628, !760, !"_entry_ptr", i1 false, i1 false}
!769 = !{ptr @.str.630, !760, !"<string literal>", i1 false, i1 false}
!770 = !{ptr @stb0899_get_dev_id._entry.629, !760, !"_entry", i1 false, i1 false}
!771 = !{ptr @stb0899_get_dev_id._entry_ptr.631, !760, !"_entry_ptr", i1 false, i1 false}
!772 = !{ptr @.str.633, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1281, i32 3}
!774 = !{ptr @stb0899_get_dev_id._entry.632, !773, !"_entry", i1 false, i1 false}
!775 = !{ptr @stb0899_get_dev_id._entry_ptr.634, !773, !"_entry_ptr", i1 false, i1 false}
!776 = !{ptr @.str.636, !773, !"<string literal>", i1 false, i1 false}
!777 = !{ptr @stb0899_get_dev_id._entry.635, !773, !"_entry", i1 false, i1 false}
!778 = !{ptr @stb0899_get_dev_id._entry_ptr.637, !773, !"_entry_ptr", i1 false, i1 false}
!779 = !{ptr @.str.639, !773, !"<string literal>", i1 false, i1 false}
!780 = !{ptr @stb0899_get_dev_id._entry.638, !773, !"_entry", i1 false, i1 false}
!781 = !{ptr @stb0899_get_dev_id._entry_ptr.640, !773, !"_entry_ptr", i1 false, i1 false}
!782 = !{ptr @.str.642, !773, !"<string literal>", i1 false, i1 false}
!783 = !{ptr @stb0899_get_dev_id._entry.641, !773, !"_entry", i1 false, i1 false}
!784 = !{ptr @stb0899_get_dev_id._entry_ptr.643, !773, !"_entry_ptr", i1 false, i1 false}
!785 = !{ptr @.str.645, !786, !"<string literal>", i1 false, i1 false}
!786 = !{!"../drivers/media/dvb-frontends/stb0899_drv.c", i32 1285, i32 2}
!787 = !{ptr @stb0899_get_dev_id._entry.644, !786, !"_entry", i1 false, i1 false}
!788 = !{ptr @stb0899_get_dev_id._entry_ptr.646, !786, !"_entry_ptr", i1 false, i1 false}
!789 = !{ptr @.str.648, !786, !"<string literal>", i1 false, i1 false}
!790 = !{ptr @stb0899_get_dev_id._entry.647, !786, !"_entry", i1 false, i1 false}
!791 = !{ptr @stb0899_get_dev_id._entry_ptr.649, !786, !"_entry_ptr", i1 false, i1 false}
!792 = !{ptr @.str.651, !786, !"<string literal>", i1 false, i1 false}
!793 = !{ptr @stb0899_get_dev_id._entry.650, !786, !"_entry", i1 false, i1 false}
!794 = !{ptr @stb0899_get_dev_id._entry_ptr.652, !786, !"_entry_ptr", i1 false, i1 false}
!795 = !{ptr @.str.654, !786, !"<string literal>", i1 false, i1 false}
!796 = !{ptr @stb0899_get_dev_id._entry.653, !786, !"_entry", i1 false, i1 false}
!797 = !{ptr @stb0899_get_dev_id._entry_ptr.655, !786, !"_entry_ptr", i1 false, i1 false}
!798 = !{i32 1, !"wchar_size", i32 2}
!799 = !{i32 1, !"min_enum_size", i32 4}
!800 = !{i32 8, !"branch-target-enforcement", i32 0}
!801 = !{i32 8, !"sign-return-address", i32 0}
!802 = !{i32 8, !"sign-return-address-all", i32 0}
!803 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!804 = !{i32 7, !"uwtable", i32 1}
!805 = !{i32 7, !"frame-pointer", i32 2}
!806 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!807 = !{!"auto-init"}
!808 = !{!"branch_weights", i32 1, i32 2000}
